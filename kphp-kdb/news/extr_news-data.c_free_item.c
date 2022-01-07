
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int item_t ;


 int UG_MODE ;
 int assert (int ) ;
 int items_kept ;
 int zfree (int *,int) ;

__attribute__((used)) static void free_item (item_t *A) {
  assert (UG_MODE);
  items_kept--;
  zfree (A, sizeof (item_t));
}
