
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tl_list_entry_set_value {int flags; int value; int object_id; int list_id; } ;
struct tl_act_extra {scalar_t__ extra; } ;


 int TL_MAYBE_FALSE ;
 int TL_MAYBE_TRUE ;
 scalar_t__ WaitAioArrPos ;
 long long do_change_entry_value (int ,int ,int ,int ) ;
 int tl_store_int (int ) ;
 int tl_store_long (long long) ;

int tl_do_list_entry_set_value (struct tl_act_extra *extra) {
  struct tl_list_entry_set_value *e = (void *)extra->extra;
  long long res = do_change_entry_value (e->list_id, e->object_id, e->value, e->flags);
  if (res == (-1ll << 63) && WaitAioArrPos) { return -2; }
  if (res == (-1ll << 63)) {
    tl_store_int (TL_MAYBE_FALSE);
  } else {
    tl_store_int (TL_MAYBE_TRUE);
    tl_store_long (res);
  }
  return 0;
}
