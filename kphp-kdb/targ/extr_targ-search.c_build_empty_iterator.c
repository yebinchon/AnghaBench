
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iterator {int dummy; } ;
typedef int iterator_t ;


 int init_empty_iterator (int ) ;
 int zmalloc (int) ;

iterator_t build_empty_iterator (void) {
  iterator_t I = zmalloc (sizeof (struct iterator));
  init_empty_iterator (I);
  return I;
}
