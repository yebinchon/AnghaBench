
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* calloc (size_t,size_t) ;

void* jv_mem_calloc_unguarded(size_t nemb, size_t sz) {
  return calloc(nemb, sz);
}
