
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;


 int EINVAL ;
 int EOVERFLOW ;
 int VLI_L_1_1 () ;

__attribute__((used)) static inline int __vli_encode_bits(u64 *out, const u64 in)
{
 u64 max = 0;
 u64 adj = 1;

 if (in == 0)
  return -EINVAL;
 VLI_L_1_1();

 return -EOVERFLOW;

}
