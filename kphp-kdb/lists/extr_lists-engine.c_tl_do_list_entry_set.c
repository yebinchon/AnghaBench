
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tl_list_entry_set {scalar_t__ text_len; int op; int text; int object_id; int list_id; int ip; int value; int flags; } ;
struct tl_act_extra {scalar_t__ extra; } ;


 int TL_BOOL_FALSE ;
 int TL_BOOL_TRUE ;
 int assert (int) ;
 int do_add_list_entry (int ,int ,int,int ,int ,int *) ;
 int do_change_entry_text (int ,int ,int ,scalar_t__) ;
 int tl_store_int (int ) ;

int tl_do_list_entry_set (struct tl_act_extra *extra) {
  struct tl_list_entry_set *e = (void *)extra->extra;
  int res;
  if (e->text_len < 0) {
    res = do_add_list_entry (e->list_id, e->object_id, e->op, e->flags, e->value, &e->ip);
    if (res == -2) { return -2; }
    if (res <= 0) {
      tl_store_int (TL_BOOL_FALSE);
      return 0;
    }
  } else {
    res = do_add_list_entry (e->list_id, e->object_id, e->op == 0 ? 3 : e->op , e->flags, e->value, &e->ip);

    if (res == -2) { return -2; }
    if (res <= 0) {
      tl_store_int (TL_BOOL_FALSE);
      return 0;
    }

    res = do_change_entry_text (e->list_id, e->object_id, e->text, e->text_len);
    assert (res >= 0);
  }

  tl_store_int (TL_BOOL_TRUE);
  return 0;
}
