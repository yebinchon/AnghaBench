
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct device {int dummy; } ;


 int EIO ;
 int PHYS_OFFSET ;
 int SZ_64M ;

int dma_set_coherent_mask(struct device *dev, u64 mask)
{
 if (mask >= PHYS_OFFSET + SZ_64M - 1)
  return 0;

 return -EIO;
}
