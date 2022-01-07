
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* heap_a ;

void *zmalloc (int size) {
  void *p = heap_a;
  heap_a += size;
  return p;
}
