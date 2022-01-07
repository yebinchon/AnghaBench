
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tl_list_entry_set {int mode; int value; int text_len; int op; void* ua_hash; void* port; void* front_ip; void* ip; int text; void* flags; int object_id; int list_id; } ;
struct tl_act_extra {int size; scalar_t__ extra; } ;


 int CHECK_LIST_OBJECT_INTS ;
 int TL_ERROR_BAD_VALUE ;
 int TL_LIST_FLAG_DATE ;
 int TL_LIST_FLAG_FLAGS ;
 int TL_LIST_FLAG_FRONT_IP ;
 int TL_LIST_FLAG_GLOBAL_ID ;
 int TL_LIST_FLAG_IP ;
 int TL_LIST_FLAG_OBJECT_ID ;
 int TL_LIST_FLAG_PORT ;
 int TL_LIST_FLAG_TEXT ;
 int TL_LIST_FLAG_UA_HASH ;
 int TL_LIST_FLAG_VALUE ;
 scalar_t__ fetch_list_id (int *) ;
 scalar_t__ fetch_object_id (int *) ;
 scalar_t__ max_text_len ;
 int stats_buff ;
 struct tl_act_extra* tl_act_extra_init (int ,int,int ) ;
 int tl_do_list_entry_set ;
 int tl_fetch_end () ;
 scalar_t__ tl_fetch_error () ;
 void* tl_fetch_int () ;
 int tl_fetch_long () ;
 int tl_fetch_set_error_format (int ,char*,int,...) ;
 int tl_fetch_string0 (int ,scalar_t__) ;

struct tl_act_extra *tl_list_entry_set (int op) {
  struct tl_act_extra *extra = tl_act_extra_init (stats_buff, sizeof (struct tl_list_entry_set), tl_do_list_entry_set);
  struct tl_list_entry_set *e = (void *)extra->extra;
  CHECK_LIST_OBJECT_INTS;
  if (fetch_list_id (&e->list_id) < 0) {
    return 0;
  }
  e->mode = tl_fetch_int ();
  if (tl_fetch_error ()) {
    return 0;
  }
  if (!(e->mode & TL_LIST_FLAG_OBJECT_ID)) {
    tl_fetch_set_error_format (TL_ERROR_BAD_VALUE, "entry must contain object id (mode = 0x%08x)", e->mode);
    return 0;
  }
  if (e->mode & (TL_LIST_FLAG_DATE | TL_LIST_FLAG_GLOBAL_ID)) {
    tl_fetch_set_error_format (TL_ERROR_BAD_VALUE, "entry can not contain date and global_id (mode = 0x%08x)", e->mode);
    return 0;
  }




  if (fetch_object_id (&e->object_id) < 0) {
    return 0;
  }
  e->flags = (e->mode & TL_LIST_FLAG_FLAGS) ? tl_fetch_int () : 0;
  e->value = (e->mode & TL_LIST_FLAG_VALUE) ? tl_fetch_long () : 0;






  if (e->value != (int)e->value) {
    tl_fetch_set_error_format (TL_ERROR_BAD_VALUE, "64-bit value can not be used in this version of lists (value = %lld)", e->value);
    return 0;
  }

  e->text_len = (e->mode & TL_LIST_FLAG_TEXT) ? tl_fetch_string0 (e->text, max_text_len - 1) : -1;
  extra->size += e->text_len + 1;
  e->ip = (e->mode & TL_LIST_FLAG_IP) ? tl_fetch_int () : 0;
  e->front_ip = (e->mode & TL_LIST_FLAG_FRONT_IP) ? tl_fetch_int () : 0;
  e->port = (e->mode & TL_LIST_FLAG_PORT) ? tl_fetch_int () : 0;
  e->ua_hash = (e->mode & TL_LIST_FLAG_UA_HASH) ? tl_fetch_int () : 0;
  e->op = op;
  tl_fetch_end ();
  if (tl_fetch_error ()) {
    return 0;
  }
  return extra;
}
