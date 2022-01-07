
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct irq_desc {int dummy; } ;
struct TYPE_2__ {unsigned short intreqr; unsigned short intenar; unsigned short intreq; } ;


 unsigned short IF_BLIT ;
 unsigned short IF_COPER ;
 unsigned short IF_VERTB ;
 int IRQ_AMIGA_BLIT ;
 int IRQ_AMIGA_COPPER ;
 int IRQ_AMIGA_VERTB ;
 TYPE_1__ amiga_custom ;
 int generic_handle_irq (int ) ;

__attribute__((used)) static void ami_int3(struct irq_desc *desc)
{
 unsigned short ints = amiga_custom.intreqr & amiga_custom.intenar;


 if (ints & IF_BLIT) {
  amiga_custom.intreq = IF_BLIT;
  generic_handle_irq(IRQ_AMIGA_BLIT);
 }


 if (ints & IF_COPER) {
  amiga_custom.intreq = IF_COPER;
  generic_handle_irq(IRQ_AMIGA_COPPER);
 }


 if (ints & IF_VERTB) {
  amiga_custom.intreq = IF_VERTB;
  generic_handle_irq(IRQ_AMIGA_VERTB);
 }
}
