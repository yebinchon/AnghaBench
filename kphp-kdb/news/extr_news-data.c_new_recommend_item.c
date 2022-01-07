
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int recommend_item_t ;


 int RECOMMEND_MODE ;
 int assert (int ) ;
 int items_kept ;
 int * zmalloc0 (int) ;

__attribute__((used)) static recommend_item_t *new_recommend_item (void) {
  assert (RECOMMEND_MODE);
  items_kept++;
  return zmalloc0 (sizeof (recommend_item_t));
}
