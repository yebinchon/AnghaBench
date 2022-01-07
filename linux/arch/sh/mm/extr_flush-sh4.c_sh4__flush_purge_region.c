
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int reg_size_t ;


 int L1_CACHE_BYTES ;
 int __ocbp (int) ;
 int register_align (void*) ;

__attribute__((used)) static void sh4__flush_purge_region(void *start, int size)
{
 reg_size_t aligned_start, v, cnt, end;

 aligned_start = register_align(start);
 v = aligned_start & ~(L1_CACHE_BYTES-1);
 end = (aligned_start + size + L1_CACHE_BYTES-1)
  & ~(L1_CACHE_BYTES-1);
 cnt = (end - v) / L1_CACHE_BYTES;

 while (cnt >= 8) {
  __ocbp(v); v += L1_CACHE_BYTES;
  __ocbp(v); v += L1_CACHE_BYTES;
  __ocbp(v); v += L1_CACHE_BYTES;
  __ocbp(v); v += L1_CACHE_BYTES;
  __ocbp(v); v += L1_CACHE_BYTES;
  __ocbp(v); v += L1_CACHE_BYTES;
  __ocbp(v); v += L1_CACHE_BYTES;
  __ocbp(v); v += L1_CACHE_BYTES;
  cnt -= 8;
 }
 while (cnt) {
  __ocbp(v); v += L1_CACHE_BYTES;
  cnt--;
 }
}
