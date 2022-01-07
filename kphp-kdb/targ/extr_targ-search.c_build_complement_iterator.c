
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int iterator_t ;


 int build_binary_subtraction_iterator (int ,int ) ;
 int build_everything_iterator () ;

iterator_t build_complement_iterator (iterator_t A) {
  return build_binary_subtraction_iterator (build_everything_iterator (), A);
}
