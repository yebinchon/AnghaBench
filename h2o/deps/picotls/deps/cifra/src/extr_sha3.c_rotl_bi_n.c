
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_4__ {void* odd; void* evn; } ;
typedef TYPE_1__ cf_sha3_bi ;


 void* rotl32 (void*,int) ;

__attribute__((used)) static inline void rotl_bi_n(cf_sha3_bi *out, const cf_sha3_bi *in, uint8_t rot)
{
  uint8_t half = rot >> 1;


  if (rot & 1)
  {
    out->odd = rotl32(in->evn, half + 1);
    out->evn = rotl32(in->odd, half);
  } else {
    out->evn = rotl32(in->evn, half);
    out->odd = rotl32(in->odd, half);
  }
}
