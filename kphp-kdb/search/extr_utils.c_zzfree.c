
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAX_ZALLOC ;
 int free (void*) ;
 int size_sum_zzfree ;
 int tot_calls_zzfree ;
 int total_memory_used ;
 int zfree (void*,int) ;

void zzfree (void *src, int size) {
  if (!src) { return; }




  if (size < MAX_ZALLOC) {
    zfree (src, size);
  } else {
    total_memory_used -= size;
    free (src);
  }
}
