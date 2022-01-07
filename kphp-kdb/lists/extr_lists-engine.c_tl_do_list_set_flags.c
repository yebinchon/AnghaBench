
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tl_list_set_flags {int nand_mask; int or_mask; int and_mask; int xor_mask; int list_id; } ;
struct tl_act_extra {scalar_t__ extra; } ;


 int TL_BOOL_FALSE ;
 int TL_BOOL_TRUE ;
 long long do_change_sublist_flags (int ,int ,int ,int,int) ;
 int tl_store_int (int ) ;

int tl_do_list_set_flags (struct tl_act_extra *extra) {
  struct tl_list_set_flags *e = (void *)(extra->extra);
  long long res = do_change_sublist_flags (e->list_id, e->xor_mask, e->and_mask, ~(e->nand_mask | e->or_mask), e->or_mask);
  if (res == -2) { return -2; }
  tl_store_int (res <= 0 ? TL_BOOL_FALSE : TL_BOOL_TRUE);
  return 0;
}
