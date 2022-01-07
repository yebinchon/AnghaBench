
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int TRIZEPS4_MMC_IRQ ;
 int free_irq (int ,void*) ;

__attribute__((used)) static void trizeps4_mci_exit(struct device *dev, void *data)
{
 free_irq(TRIZEPS4_MMC_IRQ, data);
}
