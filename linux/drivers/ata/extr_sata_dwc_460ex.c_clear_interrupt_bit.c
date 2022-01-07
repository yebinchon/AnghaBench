
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct sata_dwc_device {TYPE_1__* sata_dwc_regs; } ;
struct TYPE_2__ {int intpr; } ;


 int sata_dwc_readl (int *) ;
 int sata_dwc_writel (int *,int ) ;

__attribute__((used)) static void clear_interrupt_bit(struct sata_dwc_device *hsdev, u32 bit)
{
 sata_dwc_writel(&hsdev->sata_dwc_regs->intpr,
   sata_dwc_readl(&hsdev->sata_dwc_regs->intpr));
}
