
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int HEAP_SIZE ;
 void* Heap ;
 void* heap_a ;

void *mymalloc (size_t s) {
  void *res = heap_a;
  if (s > (1L << 25) || heap_a + s > Heap + HEAP_SIZE) return 0;
  heap_a += (s + 3) & -4;
  return res;
}
