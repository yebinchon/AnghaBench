
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int IT_EISA ;
 int IT_SCSI ;
 scalar_t__ PCIMT_CSITPEND ;
 int PCIMT_IRQ_SCSI ;
 int ST0_IM ;
 int clear_c0_status (int ) ;
 int do_IRQ (int) ;
 int i8259_irq () ;
 unsigned long read_c0_status () ;
 scalar_t__ unlikely (int) ;
 int write_c0_status (unsigned long) ;

__attribute__((used)) static void pcimt_hwint1(void)
{
 u8 pend = *(volatile char *)PCIMT_CSITPEND;
 unsigned long flags;

 if (pend & IT_EISA) {
  int irq;





  irq = i8259_irq();
  if (unlikely(irq < 0))
   return;

  do_IRQ(irq);
 }

 if (!(pend & IT_SCSI)) {
  flags = read_c0_status();
  clear_c0_status(ST0_IM);
  do_IRQ(PCIMT_IRQ_SCSI);
  write_c0_status(flags);
 }
}
