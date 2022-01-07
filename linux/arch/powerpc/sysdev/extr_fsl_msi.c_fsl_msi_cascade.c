
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct fsl_msi_cascade_data {int index; struct fsl_msi* msi_data; } ;
struct fsl_msi {int feature; int irqhost; int msi_regs; } ;
typedef int irqreturn_t ;



 int FSL_PIC_IP_MASK ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int NR_MSI_REG_MAX ;
 int ffs (int) ;
 unsigned int fh_vmpic_get_msir (int ,int*) ;
 int fsl_msi_read (int ,int) ;
 int generic_handle_irq (unsigned int) ;
 unsigned int irq_linear_revmap (int ,int ) ;
 int msi_hwirq (struct fsl_msi*,int,int) ;
 int pr_err (char*,int,unsigned int) ;
 int virq_to_hw (int) ;

__attribute__((used)) static irqreturn_t fsl_msi_cascade(int irq, void *data)
{
 unsigned int cascade_irq;
 struct fsl_msi *msi_data;
 int msir_index = -1;
 u32 msir_value = 0;
 u32 intr_index;
 u32 have_shift = 0;
 struct fsl_msi_cascade_data *cascade_data = data;
 irqreturn_t ret = IRQ_NONE;

 msi_data = cascade_data->msi_data;

 msir_index = cascade_data->index;

 if (msir_index >= NR_MSI_REG_MAX)
  cascade_irq = 0;

 switch (msi_data->feature & FSL_PIC_IP_MASK) {
 case 129:
  msir_value = fsl_msi_read(msi_data->msi_regs,
   msir_index * 0x10);
  break;
 case 130:
  msir_value = fsl_msi_read(msi_data->msi_regs, msir_index * 0x4);
  break;
 }

 while (msir_value) {
  intr_index = ffs(msir_value) - 1;

  cascade_irq = irq_linear_revmap(msi_data->irqhost,
    msi_hwirq(msi_data, msir_index,
       intr_index + have_shift));
  if (cascade_irq) {
   generic_handle_irq(cascade_irq);
   ret = IRQ_HANDLED;
  }
  have_shift += intr_index + 1;
  msir_value = msir_value >> (intr_index + 1);
 }

 return ret;
}
