
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tl_datedistr {void* step; void* max_date; void* min_date; void* mode; int list_id; } ;
struct tl_act_extra {scalar_t__ extra; } ;


 int CHECK_LIST_OBJECT_INTS ;
 scalar_t__ fetch_list_id (int *) ;
 int stats_buff ;
 struct tl_act_extra* tl_act_extra_init (int ,int,int ) ;
 int tl_do_datedistr ;
 int tl_fetch_end () ;
 scalar_t__ tl_fetch_error () ;
 void* tl_fetch_int () ;

struct tl_act_extra *tl_datedistr (void) {
  struct tl_act_extra *extra = tl_act_extra_init (stats_buff, sizeof (struct tl_datedistr), tl_do_datedistr);
  struct tl_datedistr *e = (void *)extra->extra;

  CHECK_LIST_OBJECT_INTS;
  if (fetch_list_id (&e->list_id) < 0) {
    return 0;
  }
  e->mode = tl_fetch_int ();
  e->min_date = tl_fetch_int ();
  e->max_date = tl_fetch_int ();
  e->step = tl_fetch_int ();

  tl_fetch_end ();
  if (tl_fetch_error ()) {
    return 0;
  }
  return extra;
}
