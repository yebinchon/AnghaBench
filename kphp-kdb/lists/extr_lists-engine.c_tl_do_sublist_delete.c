
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tl_sublist_delete {int and_mask; int xor_mask; int list_id; } ;
struct tl_act_extra {scalar_t__ extra; } ;


 int TL_BOOL_FALSE ;
 int TL_BOOL_TRUE ;
 long long do_delete_sublist (int ,int ,int ) ;
 int tl_store_int (int ) ;

int tl_do_sublist_delete (struct tl_act_extra *extra) {
  struct tl_sublist_delete *e = (void *)(extra->extra);

  long long res = do_delete_sublist (e->list_id, e->xor_mask, e->and_mask);
  if (res == -2) { return -2; }
  tl_store_int (res <= 0 ? TL_BOOL_FALSE : TL_BOOL_TRUE);
  return 0;
}
