
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tl_list_entry_set_flags {int or_mask; int nand_mask; int object_id; int list_id; } ;
struct tl_act_extra {scalar_t__ extra; } ;


 int CHECK_LIST_OBJECT_INTS ;
 scalar_t__ fetch_list_id (int *) ;
 scalar_t__ fetch_object_id (int *) ;
 int stats_buff ;
 struct tl_act_extra* tl_act_extra_init (int ,int,int ) ;
 int tl_do_list_entry_set_flags ;
 int tl_fetch_end () ;
 scalar_t__ tl_fetch_error () ;
 int tl_fetch_int () ;

struct tl_act_extra *tl_list_entry_set_flags (int op) {
  struct tl_act_extra *extra = tl_act_extra_init (stats_buff, sizeof (struct tl_list_entry_set_flags), tl_do_list_entry_set_flags);
  struct tl_list_entry_set_flags *e = (void *)extra->extra;
  CHECK_LIST_OBJECT_INTS;
  if (fetch_list_id (&e->list_id) < 0) {
    return 0;
  }
  if (fetch_object_id (&e->object_id) < 0) {
    return 0;
  }

  e->or_mask = op != 3 ? tl_fetch_int () : 0;
  e->nand_mask = op == 0 ? -1 : op == 2 ? 0 : tl_fetch_int ();

  tl_fetch_end ();
  if (tl_fetch_error ()) {
    return 0;
  }
  return extra;
}
