
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;
struct irq_data {unsigned int irq; } ;


 int __raw_writel (unsigned int,scalar_t__) ;
 scalar_t__ mips_irq_chip ;
 scalar_t__ mips_irq_chip_reg_en_w1s ;

__attribute__((used)) static void irq_pci_unmask(struct irq_data *data)
{
 u32 mask = 1u << data->irq;

 __raw_writel(mask, mips_irq_chip + mips_irq_chip_reg_en_w1s);
}
