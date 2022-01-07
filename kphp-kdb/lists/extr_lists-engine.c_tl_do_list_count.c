
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tl_list_count {int cnt; int list_id; } ;
struct tl_act_extra {scalar_t__ extra; } ;


 int TL_INT ;
 int get_list_counter (int ,int ) ;
 int tl_store_int (int) ;

int tl_do_list_count (struct tl_act_extra *extra) {
  struct tl_list_count *e = (void *)(extra->extra);
  int res = get_list_counter (e->list_id, e->cnt);
  if (res == -2) { return -2; }

  tl_store_int (TL_INT);
  tl_store_int (res >= 0 ? res : 0);
  return 0;
}
