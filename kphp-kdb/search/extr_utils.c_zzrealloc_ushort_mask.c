
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memcpy (void*,void*,int) ;
 int popcount_short (int) ;
 int zzfree (void*,int) ;
 void* zzmalloc0 (int) ;

void *zzrealloc_ushort_mask (void *src, int mask_old, int mask_new, int size_of_element) {
  if (!mask_new) {
    if (src) { zzfree (src, popcount_short (mask_old) * size_of_element); }
    return 0;
  }
  void *dst = zzmalloc0 ( popcount_short (mask_new) * size_of_element);
  if (!dst) { return 0; }
  if (src) {
    int psrc = 0, pdst = 0, u = mask_old | mask_new;
    while (u) {
      int x;
      u ^= x = u & -u;
      if (x & mask_new) {
        if (x & mask_old) {
          memcpy (dst + pdst, src + psrc, size_of_element);
          psrc += size_of_element;
        }
        pdst += size_of_element;
      } else {
        psrc += size_of_element;
      }
    }
    zzfree (src, psrc);
  }
  return dst;
}
