
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tl_list_get {int mode; int limit; void* offset; int list_id; } ;
struct tl_act_extra {scalar_t__ extra; } ;


 int CHECK_LIST_OBJECT_INTS ;
 int TL_ERROR_BAD_VALUE ;
 scalar_t__ fetch_list_id (int *) ;
 int stats_buff ;
 struct tl_act_extra* tl_act_extra_init (int ,int,int ) ;
 int tl_do_list_get ;
 int tl_fetch_end () ;
 scalar_t__ tl_fetch_error () ;
 void* tl_fetch_int () ;
 int tl_fetch_set_error_format (int ,char*) ;

struct tl_act_extra *tl_list_get (int full, int limit) {
  struct tl_act_extra *extra = tl_act_extra_init (stats_buff, sizeof (struct tl_list_get), tl_do_list_get);
  struct tl_list_get *e = (void *)extra->extra;
  CHECK_LIST_OBJECT_INTS;
  if (fetch_list_id (&e->list_id) < 0) {
    return 0;
  }
  e->mode = tl_fetch_int ();
  if (!full && (e->mode & ~(63 | (1 << 15)))) {
    tl_fetch_set_error_format (TL_ERROR_BAD_VALUE, "in non-full get list only modes 0..63 and bit 15 are supported");
    return 0;
  }
  if (!full) {
    e->mode |= (1 << 15);
  }
  if (limit) {
    e->limit = tl_fetch_int ();
    e->offset = tl_fetch_int ();
  } else {
    e->limit = -1;
    e->offset = 0;
  }
  tl_fetch_end ();
  if (tl_fetch_error ()) {
    return 0;
  }
  return extra;
}
