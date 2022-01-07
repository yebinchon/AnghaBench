
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pm_tree_builder {scalar_t__ choice; } ;
typedef int pm_cell_t ;


 int pm_tree_adva (int *,struct pm_tree_builder*) ;
 int pm_tree_advb (int *,struct pm_tree_builder*) ;

__attribute__((used)) static void pm_tree_advance (pm_cell_t *A, struct pm_tree_builder *B) {
  if (B->choice) {
    pm_tree_advb (A, B);
  } else {
    pm_tree_adva (A, B);
  }
}
