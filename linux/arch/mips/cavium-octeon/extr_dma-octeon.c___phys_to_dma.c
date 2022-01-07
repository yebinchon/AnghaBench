
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device {int dummy; } ;
typedef int phys_addr_t ;
typedef int dma_addr_t ;
struct TYPE_2__ {int (* phys_to_dma ) (struct device*,int ) ;} ;


 scalar_t__ dev_is_pci (struct device*) ;
 TYPE_1__* octeon_pci_dma_ops ;
 int stub1 (struct device*,int ) ;

dma_addr_t __phys_to_dma(struct device *dev, phys_addr_t paddr)
{




 return paddr;
}
