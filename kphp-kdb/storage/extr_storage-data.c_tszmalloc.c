
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (void*) ;
 void* malloc (long) ;

void *tszmalloc (long size) {
  void *res = malloc (size);
  assert (res);
  return res;
}
