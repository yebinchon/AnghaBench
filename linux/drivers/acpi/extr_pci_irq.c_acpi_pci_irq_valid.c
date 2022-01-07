
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct pci_dev {int irq; int dev; } ;


 int IRQ_NOTCONNECTED ;
 int dev_warn (int *,char*,int ) ;
 int pin_name (int ) ;

__attribute__((used)) static inline bool acpi_pci_irq_valid(struct pci_dev *dev, u8 pin)
{
 return 1;
}
