
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tl_sublist_delete {int xor_mask; int and_mask; int list_id; } ;
struct tl_act_extra {scalar_t__ extra; } ;


 int CHECK_LIST_OBJECT_INTS ;
 scalar_t__ fetch_list_id (int *) ;
 int stats_buff ;
 struct tl_act_extra* tl_act_extra_init (int ,int,int ) ;
 int tl_do_sublist_delete ;
 int tl_fetch_end () ;
 scalar_t__ tl_fetch_error () ;
 int tl_fetch_int () ;

struct tl_act_extra *tl_sublist_delete (int ex) {
  struct tl_act_extra *extra = tl_act_extra_init (stats_buff, sizeof (struct tl_sublist_delete), tl_do_sublist_delete);
  struct tl_sublist_delete *e = (void *)extra->extra;
  CHECK_LIST_OBJECT_INTS;
  if (fetch_list_id (&e->list_id) < 0) {
    return 0;
  }

  e->xor_mask = tl_fetch_int ();
  e->and_mask = ex ? tl_fetch_int () : 7;

  tl_fetch_end ();
  if (tl_fetch_error ()) {
    return 0;
  }

  return extra;
}
