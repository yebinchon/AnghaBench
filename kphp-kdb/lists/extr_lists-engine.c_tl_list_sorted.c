
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tl_list_sorted {void* limit; void* mode; void* and_mask; void* xor_mask; int list_id; } ;
struct tl_act_extra {scalar_t__ extra; } ;


 int CHECK_LIST_OBJECT_INTS ;
 void* MAX_RES ;
 scalar_t__ fetch_list_id (int *) ;
 int stats_buff ;
 struct tl_act_extra* tl_act_extra_init (int ,int,int ) ;
 int tl_do_list_sorted ;
 int tl_do_list_sorted_full ;
 int tl_fetch_end () ;
 scalar_t__ tl_fetch_error () ;
 void* tl_fetch_int () ;

struct tl_act_extra *tl_list_sorted (int is_full, int has_limit) {
  struct tl_act_extra *extra = tl_act_extra_init (stats_buff, sizeof (struct tl_list_sorted), is_full ? tl_do_list_sorted_full : tl_do_list_sorted);
  struct tl_list_sorted *e = (void *)extra->extra;

  CHECK_LIST_OBJECT_INTS;
  if (fetch_list_id (&e->list_id) < 0) {
    return 0;
  }

  e->xor_mask = tl_fetch_int ();
  e->and_mask = tl_fetch_int ();
  e->mode = tl_fetch_int ();
  e->limit = has_limit ? tl_fetch_int () : MAX_RES;

  tl_fetch_end ();
  if (tl_fetch_error ()) {
    return 0;
  }
  return extra;
}
