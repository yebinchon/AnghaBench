
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intersection_condition_iterator {int (* jump_to ) (scalar_t__,int ) ;scalar_t__ Cond; } ;
typedef scalar_t__ iterator_t ;


 int multiple_intersection_subtraction_jump_to (scalar_t__,int ) ;
 int multiple_intersection_subtraction_with_condition_jump_to (scalar_t__,int ) ;
 int stub1 (scalar_t__,int ) ;

iterator_t build_multiple_intersection_iterator_with_subtraction (iterator_t I) {
  struct intersection_condition_iterator *ICI = (struct intersection_condition_iterator *)I;
  if (ICI->Cond) {
    ICI->jump_to = multiple_intersection_subtraction_with_condition_jump_to;
  } else {
    ICI->jump_to = multiple_intersection_subtraction_jump_to;
  }
  ICI->jump_to (I, 0);
  return I;
}
