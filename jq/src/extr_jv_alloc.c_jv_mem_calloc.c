
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* calloc (size_t,size_t) ;
 int memory_exhausted () ;

void* jv_mem_calloc(size_t nemb, size_t sz) {
  void* p = calloc(nemb, sz);
  if (!p) {
    memory_exhausted();
  }
  return p;
}
