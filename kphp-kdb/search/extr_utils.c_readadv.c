
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (int) ;
 int crc32_partial (size_t,size_t,int ) ;
 int idx_crc32_complement ;
 size_t rptr ;
 size_t wptr ;

void readadv (size_t len) {
  assert (len >= 0 && len <= wptr - rptr);
  idx_crc32_complement = crc32_partial (rptr, len, idx_crc32_complement);
  rptr += len;
}
