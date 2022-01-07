
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int trp_node ;


 int assert (int) ;
 int ** heap ;
 int heap_fix_down () ;
 scalar_t__ heap_size ;

trp_node *heap_get (void) {
  assert (heap_size > 0);

  trp_node *tmp = heap[1];
  heap[1] = heap[heap_size--];
  heap_fix_down();

  return tmp;
}
