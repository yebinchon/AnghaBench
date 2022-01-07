
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (int) ;
 int crc32c_partial (size_t,size_t,int ) ;
 int idx_crc32c_complement ;
 size_t rptr ;
 size_t wptr ;

__attribute__((used)) static void readadv (size_t len) {
  assert (len >= 0 && len <= wptr - rptr);
  idx_crc32c_complement = crc32c_partial (rptr, len, idx_crc32c_complement);
  rptr += len;
}
