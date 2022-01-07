
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct irq_desc {int dummy; } ;
struct TYPE_2__ {unsigned short intreqr; unsigned short intenar; unsigned short intreq; } ;


 unsigned short IF_DSKSYN ;
 unsigned short IF_RBF ;
 int IRQ_AMIGA_DSKSYN ;
 int IRQ_AMIGA_RBF ;
 TYPE_1__ amiga_custom ;
 int generic_handle_irq (int ) ;

__attribute__((used)) static void ami_int5(struct irq_desc *desc)
{
 unsigned short ints = amiga_custom.intreqr & amiga_custom.intenar;


 if (ints & IF_RBF) {

  generic_handle_irq(IRQ_AMIGA_RBF);
 }


 if (ints & IF_DSKSYN) {
  amiga_custom.intreq = IF_DSKSYN;
  generic_handle_irq(IRQ_AMIGA_DSKSYN);
 }
}
