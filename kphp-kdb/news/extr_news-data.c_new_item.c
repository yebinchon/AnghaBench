
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int item_t ;


 int UG_MODE ;
 int assert (int ) ;
 int items_kept ;
 int * zmalloc0 (int) ;

__attribute__((used)) static item_t *new_item (void) {
  assert (UG_MODE);
  items_kept++;
  return zmalloc0 (sizeof (item_t));
}
