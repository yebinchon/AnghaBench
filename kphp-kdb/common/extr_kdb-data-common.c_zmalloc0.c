
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PTRSIZE ;
 int assert (void*) ;
 void* dyn_alloc (long,int ) ;
 int memset (void*,int ,long) ;

void *zmalloc0 (long size) {
  void *res = dyn_alloc (size, PTRSIZE);
  assert (res);
  memset (res, 0, size);
  return res;
}
