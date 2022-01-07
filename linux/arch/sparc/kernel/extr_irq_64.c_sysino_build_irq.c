
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct irq_chip {int dummy; } ;


 unsigned int sun4v_build_common (int ,unsigned int,int ,struct irq_chip*) ;
 int sysino_handler_data ;
 int sysino_set_bucket (unsigned int) ;

__attribute__((used)) static unsigned int sysino_build_irq(u32 devhandle, unsigned int devino,
         struct irq_chip *chip)
{
 unsigned int irq;

 irq = sun4v_build_common(devhandle, devino, sysino_handler_data, chip);
 if (!irq)
  goto out;

 sysino_set_bucket(irq);
out:
 return irq;
}
