
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (void*) ;
 void* calloc (long,int) ;

void *tszmalloc0 (long size) {
  void *res = calloc (size, 1);
  assert (res);
  return res;
}
