
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct irq_desc {int dummy; } ;
struct TYPE_2__ {unsigned short intreqr; unsigned short intenar; unsigned short intreq; } ;


 unsigned short IF_DSKBLK ;
 unsigned short IF_SOFT ;
 unsigned short IF_TBE ;
 int IRQ_AMIGA_DSKBLK ;
 int IRQ_AMIGA_SOFT ;
 int IRQ_AMIGA_TBE ;
 TYPE_1__ amiga_custom ;
 int generic_handle_irq (int ) ;

__attribute__((used)) static void ami_int1(struct irq_desc *desc)
{
 unsigned short ints = amiga_custom.intreqr & amiga_custom.intenar;


 if (ints & IF_TBE) {
  amiga_custom.intreq = IF_TBE;
  generic_handle_irq(IRQ_AMIGA_TBE);
 }


 if (ints & IF_DSKBLK) {
  amiga_custom.intreq = IF_DSKBLK;
  generic_handle_irq(IRQ_AMIGA_DSKBLK);
 }


 if (ints & IF_SOFT) {
  amiga_custom.intreq = IF_SOFT;
  generic_handle_irq(IRQ_AMIGA_SOFT);
 }
}
