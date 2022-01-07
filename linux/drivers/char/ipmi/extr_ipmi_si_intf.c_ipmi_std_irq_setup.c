
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct si_sm_io {scalar_t__ irq; int dev; int irq_cleanup; int irq_handler_data; } ;


 int IRQF_SHARED ;
 int SI_DEVICE_NAME ;
 int dev_info (int ,char*,scalar_t__) ;
 int dev_warn (int ,char*,int ,scalar_t__) ;
 int ipmi_irq_finish_setup (struct si_sm_io*) ;
 int ipmi_si_irq_handler ;
 int request_irq (scalar_t__,int ,int ,int ,int ) ;
 int std_irq_cleanup ;

int ipmi_std_irq_setup(struct si_sm_io *io)
{
 int rv;

 if (!io->irq)
  return 0;

 rv = request_irq(io->irq,
    ipmi_si_irq_handler,
    IRQF_SHARED,
    SI_DEVICE_NAME,
    io->irq_handler_data);
 if (rv) {
  dev_warn(io->dev, "%s unable to claim interrupt %d,"
    " running polled\n",
    SI_DEVICE_NAME, io->irq);
  io->irq = 0;
 } else {
  io->irq_cleanup = std_irq_cleanup;
  ipmi_irq_finish_setup(io);
  dev_info(io->dev, "Using irq %d\n", io->irq);
 }

 return rv;
}
