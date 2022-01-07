
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tl_list_sum {int id_ints; int has_weights; int count; scalar_t__ arr; int mode; int list_id; } ;
struct tl_act_extra {scalar_t__ extra; } ;
typedef int array_object_id_t ;


 int TL_LONG ;
 long long prepare_list_sum (int ,int ,int *,int ,int ,int ) ;
 int tl_store_int (int ) ;
 int tl_store_long (long long) ;

int tl_do_list_sum (struct tl_act_extra *extra) {
  struct tl_list_sum *e = (void *)(extra->extra);
  long long res = prepare_list_sum (e->list_id, e->mode, (array_object_id_t *)e->arr, e->count, e->has_weights, e->id_ints);
  if (res == -2) {
    return -2;
  }
  if (res < 0) {
    return res;
  }
  tl_store_int (TL_LONG);
  tl_store_long (res);
  return 0;
}
