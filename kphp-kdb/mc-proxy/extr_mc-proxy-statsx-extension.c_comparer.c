
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int comparer (const void * a, const void * b){
  return -( *((int*)a + 1)- *((int*)b + 1) );
}
