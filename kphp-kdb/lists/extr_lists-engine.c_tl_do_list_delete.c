
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tl_list_delete {int list_id; } ;
struct tl_act_extra {scalar_t__ extra; } ;


 int TL_BOOL_FALSE ;
 int TL_BOOL_TRUE ;
 int do_delete_list (int ) ;
 int tl_store_int (int ) ;

int tl_do_list_delete (struct tl_act_extra *extra) {
  struct tl_list_delete *e = (void *)extra->extra;
  int res = do_delete_list (e->list_id);
  if (res == -2) { return -2; }
  tl_store_int (res <= 0 ? TL_BOOL_FALSE : TL_BOOL_TRUE);
  return 0;
}
