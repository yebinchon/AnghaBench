
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;

__attribute__((used)) static int regmap_mmio_regbits_check(size_t reg_bits)
{
 switch (reg_bits) {
 case 8:
 case 16:
 case 32:



  return 0;
 default:
  return -EINVAL;
 }
}
