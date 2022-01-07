
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* calloc (size_t,int) ;
 size_t memory_used ;

void *qmalloc0 (size_t x) {
  memory_used += x;
  return calloc (x, 1);
}
