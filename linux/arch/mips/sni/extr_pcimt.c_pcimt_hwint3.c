
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char u8 ;


 int IE_IRQ3 ;
 char IT_INTA ;
 char IT_INTB ;
 char IT_INTC ;
 char IT_INTD ;
 scalar_t__ PCIMT_CSITPEND ;
 int PCIMT_IRQ_INT2 ;
 int clear_c0_status (int ) ;
 int do_IRQ (int) ;
 int ffs (char) ;
 int set_c0_status (int ) ;

__attribute__((used)) static void pcimt_hwint3(void)
{
 u8 pend = *(volatile char *)PCIMT_CSITPEND;
 int irq;

 pend &= (IT_INTA | IT_INTB | IT_INTC | IT_INTD);
 pend ^= (IT_INTA | IT_INTB | IT_INTC | IT_INTD);
 clear_c0_status(IE_IRQ3);
 irq = PCIMT_IRQ_INT2 + ffs(pend) - 1;
 do_IRQ(irq);
 set_c0_status(IE_IRQ3);
}
