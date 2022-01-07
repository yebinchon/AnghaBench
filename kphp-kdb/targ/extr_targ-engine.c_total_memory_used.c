
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct treespace_header {long long used_ints; } ;


 scalar_t__ AdSpace ;
 scalar_t__ WordSpace ;
 scalar_t__ allocated_metafile_bytes ;
 scalar_t__ dyn_cur ;
 scalar_t__ dyn_first ;
 scalar_t__ dyn_last ;
 scalar_t__ dyn_top ;
 scalar_t__ tot_userlists_size ;

long long total_memory_used (void) {
  long long res = (long) (dyn_cur - dyn_first + dyn_last - dyn_top);
  res += (AdSpace ? ((struct treespace_header *)AdSpace)->used_ints : 0) * 4LL;
  res += ((struct treespace_header *)WordSpace)->used_ints * 4LL;
  res += tot_userlists_size;
  res += allocated_metafile_bytes;
  return res;
}
