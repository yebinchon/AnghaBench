
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_3__ {int odd; int evn; } ;
typedef TYPE_1__ cf_sha3_bi ;


 int shuffle_in (int) ;
 int write32_le (int,int *) ;

__attribute__((used)) static inline void write64_bi(const cf_sha3_bi *bi, uint8_t data[8])
{
  uint32_t lo = (bi->odd & 0x0000ffff) | (bi->evn << 16),
           hi = (bi->odd >> 16) | (bi->evn & 0xffff0000);

  lo = shuffle_in(lo);
  hi = shuffle_in(hi);

  write32_le(lo, data + 0);
  write32_le(hi, data + 4);
}
