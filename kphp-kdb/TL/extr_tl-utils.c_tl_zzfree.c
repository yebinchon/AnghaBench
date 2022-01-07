
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAX_ZMALLOC ;
 int free (void*) ;
 int zfree (void*,int) ;

void tl_zzfree (void *src, int size) {
  if (!src) { return; }
  if (size <= MAX_ZMALLOC) {
    zfree (src, size);
  } else {
    free (src);
  }
}
