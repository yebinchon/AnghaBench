
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct irq_desc {int dummy; } ;
struct TYPE_2__ {unsigned short intreqr; unsigned short intenar; unsigned short intreq; } ;


 unsigned short IF_AUD0 ;
 unsigned short IF_AUD1 ;
 unsigned short IF_AUD2 ;
 unsigned short IF_AUD3 ;
 int IRQ_AMIGA_AUD0 ;
 int IRQ_AMIGA_AUD1 ;
 int IRQ_AMIGA_AUD2 ;
 int IRQ_AMIGA_AUD3 ;
 TYPE_1__ amiga_custom ;
 int generic_handle_irq (int ) ;

__attribute__((used)) static void ami_int4(struct irq_desc *desc)
{
 unsigned short ints = amiga_custom.intreqr & amiga_custom.intenar;


 if (ints & IF_AUD0) {
  amiga_custom.intreq = IF_AUD0;
  generic_handle_irq(IRQ_AMIGA_AUD0);
 }


 if (ints & IF_AUD1) {
  amiga_custom.intreq = IF_AUD1;
  generic_handle_irq(IRQ_AMIGA_AUD1);
 }


 if (ints & IF_AUD2) {
  amiga_custom.intreq = IF_AUD2;
  generic_handle_irq(IRQ_AMIGA_AUD2);
 }


 if (ints & IF_AUD3) {
  amiga_custom.intreq = IF_AUD3;
  generic_handle_irq(IRQ_AMIGA_AUD3);
 }
}
