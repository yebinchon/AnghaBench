
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tl_object_delete {int object_id; } ;
struct tl_act_extra {scalar_t__ extra; } ;


 int CHECK_LIST_OBJECT_INTS ;
 int delete_object_queries ;
 scalar_t__ fetch_object_id (int *) ;
 int stats_buff ;
 struct tl_act_extra* tl_act_extra_init (int ,int,int ) ;
 int tl_do_object_delete ;
 int tl_fetch_end () ;
 scalar_t__ tl_fetch_error () ;

struct tl_act_extra *tl_object_delete (void) {
  struct tl_act_extra *extra = tl_act_extra_init (stats_buff, sizeof (struct tl_object_delete), tl_do_object_delete);
  struct tl_object_delete *e = (void *)extra->extra;
  CHECK_LIST_OBJECT_INTS;
  if (fetch_object_id (&e->object_id) < 0) {
    return 0;
  }
  tl_fetch_end ();
  if (tl_fetch_error ()) {
    return 0;
  }
  delete_object_queries ++;
  return extra;
}
