
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PTRSIZE ;
 int assert (void*) ;
 void* dyn_top_alloc (long,int ) ;
 int memset (void*,int ,long) ;

void *ztmalloc0 (long size) {
  void *res = dyn_top_alloc (size, PTRSIZE);
  assert (res);
  memset (res, 0, size);
  return res;
}
