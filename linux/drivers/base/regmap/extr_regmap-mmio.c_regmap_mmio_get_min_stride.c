
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;

__attribute__((used)) static int regmap_mmio_get_min_stride(size_t val_bits)
{
 int min_stride;

 switch (val_bits) {
 case 8:

  min_stride = 0;
  return 0;
 case 16:
  min_stride = 2;
  break;
 case 32:
  min_stride = 4;
  break;





 default:
  return -EINVAL;
 }

 return min_stride;
}
