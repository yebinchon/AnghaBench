
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAX_ZALLOC ;
 int free (void*) ;
 int tot_memory_allocated ;
 int zfree (void*,int) ;

void zzfree (void *p, int l) {
  if (l < MAX_ZALLOC) {
    zfree (p, l);
  } else {
    free (p);
  }
  tot_memory_allocated -= l;
}
