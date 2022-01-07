
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (int) ;
 void* malloc (size_t) ;
 size_t memory_used ;

void *qmalloc (size_t x) {
  memory_used += x;
  void *res = malloc (x);
  assert (x == 0 || res != ((void*)0));
  return res;
}
