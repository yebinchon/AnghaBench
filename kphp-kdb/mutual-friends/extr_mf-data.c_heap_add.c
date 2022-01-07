
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int trp_node ;


 int MAX_HEAP ;
 int active_aio_queries ;
 int ** heap ;
 int heap_fix_up (int) ;
 int heap_size ;

void heap_add (trp_node *v) {
  if (heap_size + 1 >= MAX_HEAP) {
    active_aio_queries |= (1 << 20);
  }

  if (v != ((void*)0) && heap_size + 1 < MAX_HEAP) {
    heap[++heap_size] = v;
    heap_fix_up (heap_size);
  }
}
