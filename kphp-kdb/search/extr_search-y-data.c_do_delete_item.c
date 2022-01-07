
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lev_search_delete_item {long long obj_id; } ;


 int LEV_SEARCH_DELETE_ITEM ;
 struct lev_search_delete_item* alloc_log_event (int ,int,int ) ;
 int assert (struct lev_search_delete_item*) ;
 int delete_item (long long) ;
 int fits (long long) ;

int do_delete_item (long long item_id) {
  if (!fits (item_id)) { return 0; }
  struct lev_search_delete_item *ED = alloc_log_event (LEV_SEARCH_DELETE_ITEM, 12, 0);
  assert (ED);
  ED->obj_id = item_id;
  return delete_item (item_id);
}
