
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mpic {unsigned int* err_int_vecs; int err_regs; } ;
struct irq_data {int irq; } ;


 int MPIC_ERR_INT_EIMR ;
 struct mpic* irq_data_get_irq_chip_data (struct irq_data*) ;
 int mpic_fsl_err_read (int ,int ) ;
 int mpic_fsl_err_write (int ,int) ;
 unsigned int virq_to_hw (int ) ;

__attribute__((used)) static void fsl_mpic_unmask_err(struct irq_data *d)
{
 u32 eimr;
 struct mpic *mpic = irq_data_get_irq_chip_data(d);
 unsigned int src = virq_to_hw(d->irq) - mpic->err_int_vecs[0];

 eimr = mpic_fsl_err_read(mpic->err_regs, MPIC_ERR_INT_EIMR);
 eimr &= ~(1 << (31 - src));
 mpic_fsl_err_write(mpic->err_regs, eimr);
}
