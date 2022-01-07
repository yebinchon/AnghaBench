
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* malloc (size_t) ;

void* jv_mem_alloc_unguarded(size_t sz) {
  return malloc(sz);
}
