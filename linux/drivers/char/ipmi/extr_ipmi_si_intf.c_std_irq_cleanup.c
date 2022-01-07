
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct si_sm_io {int irq_handler_data; int irq; } ;


 int free_irq (int ,int ) ;
 int ipmi_irq_start_cleanup (struct si_sm_io*) ;

__attribute__((used)) static void std_irq_cleanup(struct si_sm_io *io)
{
 ipmi_irq_start_cleanup(io);
 free_irq(io->irq, io->irq_handler_data);
}
