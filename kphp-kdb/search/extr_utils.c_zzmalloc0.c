
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAX_ZALLOC ;
 void* calloc (int,int) ;
 int size_sum_zzmallocs ;
 int tot_calls_zzmallocs ;
 int total_memory_used ;
 void* zmalloc0 (int) ;

void *zzmalloc0 (int size) {




  if (size < MAX_ZALLOC) {
    return zmalloc0 (size);
  } else {
    total_memory_used += size;
    return calloc (size, 1);
  }
}
