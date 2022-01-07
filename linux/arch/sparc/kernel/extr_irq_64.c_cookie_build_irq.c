
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct irq_chip {int dummy; } ;


 unsigned long cookie_assign (unsigned int,int ,unsigned int) ;
 int cookie_handler_data ;
 int irq_free (unsigned int) ;
 unsigned int sun4v_build_common (int ,unsigned int,int ,struct irq_chip*) ;

__attribute__((used)) static unsigned int cookie_build_irq(u32 devhandle, unsigned int devino,
         struct irq_chip *chip)
{
 unsigned long hv_error;
 unsigned int irq;

 irq = sun4v_build_common(devhandle, devino, cookie_handler_data, chip);

 hv_error = cookie_assign(irq, devhandle, devino);
 if (hv_error) {
  irq_free(irq);
  irq = 0;
 }

 return irq;
}
