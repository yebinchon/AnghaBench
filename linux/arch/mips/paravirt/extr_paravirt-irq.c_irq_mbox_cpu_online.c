
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct irq_data {int dummy; } ;


 int irq_mbox_cpu_onoffline (struct irq_data*,scalar_t__) ;
 scalar_t__ mips_irq_chip ;
 scalar_t__ mips_irq_chip_reg_en_w1s ;

__attribute__((used)) static void irq_mbox_cpu_online(struct irq_data *data)
{
 irq_mbox_cpu_onoffline(data, mips_irq_chip + mips_irq_chip_reg_en_w1s + sizeof(u32));
}
