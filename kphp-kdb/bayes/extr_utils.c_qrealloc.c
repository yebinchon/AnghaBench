
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memory_used ;
 void* realloc (void*,size_t) ;

void *qrealloc (void *p, size_t x, size_t old) {
  memory_used += x - old;
  return realloc (p, x);
}
