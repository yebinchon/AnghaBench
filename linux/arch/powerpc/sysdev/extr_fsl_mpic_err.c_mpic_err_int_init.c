
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mpic {int err_regs; int irqhost; } ;
typedef int irq_hw_number_t ;


 int IRQF_NO_THREAD ;
 int fsl_error_int_handler ;
 unsigned int irq_create_mapping (int ,int ) ;
 int mpic_fsl_err_write (int ,int ) ;
 int pr_err (char*) ;
 int request_irq (unsigned int,int ,int ,char*,struct mpic*) ;

void mpic_err_int_init(struct mpic *mpic, irq_hw_number_t irqnum)
{
 unsigned int virq;
 int ret;

 virq = irq_create_mapping(mpic->irqhost, irqnum);
 if (!virq) {
  pr_err("Error interrupt setup failed\n");
  return;
 }


 mpic_fsl_err_write(mpic->err_regs, ~0);

 ret = request_irq(virq, fsl_error_int_handler, IRQF_NO_THREAD,
      "mpic-error-int", mpic);
 if (ret)
  pr_err("Failed to register error interrupt handler\n");
}
