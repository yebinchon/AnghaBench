
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tl_object_delete {int object_id; } ;
struct tl_act_extra {scalar_t__ extra; } ;


 int TL_BOOL_STAT ;
 int assert (int) ;
 int do_delete_object (int ) ;
 int tl_store_int (int) ;

int tl_do_object_delete (struct tl_act_extra *extra) {
  struct tl_object_delete *e = (void *)extra->extra;
  int res = do_delete_object (e->object_id);
  assert (res != -2);
  tl_store_int (TL_BOOL_STAT);
  tl_store_int (res > 0);
  tl_store_int (res <= 0);
  tl_store_int (0);
  return 0;
}
