
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tl_list_entry_get {int mode; int object_id; int list_id; } ;
struct tl_act_extra {scalar_t__ extra; } ;


 int CHECK_LIST_OBJECT_INTS ;
 int TL_ERROR_BAD_VALUE ;
 int TL_LIST_FLAG_FRONT_IP ;
 int TL_LIST_FLAG_IP ;
 int TL_LIST_FLAG_PORT ;
 int TL_LIST_FLAG_UA_HASH ;
 scalar_t__ fetch_list_id (int *) ;
 scalar_t__ fetch_object_id (int *) ;
 int stats_buff ;
 struct tl_act_extra* tl_act_extra_init (int ,int,int (*) (struct tl_act_extra*)) ;
 int tl_fetch_end () ;
 scalar_t__ tl_fetch_error () ;
 int tl_fetch_int () ;
 int tl_fetch_set_error_format (int ,char*,...) ;

struct tl_act_extra *tl_list_entry_get (int (*act)(struct tl_act_extra *)) {
  struct tl_act_extra *extra = tl_act_extra_init (stats_buff, sizeof (struct tl_list_entry_get), act);
  struct tl_list_entry_get *e = (void *)extra->extra;
  CHECK_LIST_OBJECT_INTS;
  if (fetch_list_id (&e->list_id) < 0) {
    return 0;
  }
  if (fetch_object_id (&e->object_id) < 0) {
    return 0;
  }
  e->mode = tl_fetch_int ();
  tl_fetch_end ();
  if (tl_fetch_error ()) {
    return 0;
  }
  if (e->mode & 63) {
    tl_fetch_set_error_format (TL_ERROR_BAD_VALUE, "In get object flags 0..5 not supported");
    return 0;
  }
  if (e->mode & (TL_LIST_FLAG_IP | TL_LIST_FLAG_FRONT_IP | TL_LIST_FLAG_PORT | TL_LIST_FLAG_UA_HASH)) {
    tl_fetch_set_error_format (TL_ERROR_BAD_VALUE, "Get ip/front_ip/port/ua_hash not supported (yet?). (mode = 0x%08x)", e->mode);
    return 0;
  }
  return extra;
}
