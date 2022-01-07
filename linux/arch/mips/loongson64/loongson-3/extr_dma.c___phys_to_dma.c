
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
typedef int phys_addr_t ;
typedef long dma_addr_t ;



dma_addr_t __phys_to_dma(struct device *dev, phys_addr_t paddr)
{


 long nid = (paddr >> 44) & 0x3;
 return ((nid << 44) ^ paddr) | (nid << 37);
}
