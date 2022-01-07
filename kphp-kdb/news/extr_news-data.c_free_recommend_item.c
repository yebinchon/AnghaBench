
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int recommend_item_t ;


 int RECOMMEND_MODE ;
 int assert (int ) ;
 int items_kept ;
 int zfree (int *,int) ;

__attribute__((used)) static void free_recommend_item (recommend_item_t *A) {
  assert (RECOMMEND_MODE);
  items_kept--;
  zfree (A, sizeof (*A));
}
