
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int I8042_KBD_IRQ ;


 int PIC_CASCADE_IR ;
 int PIC_MASTER_IMR ;
 int PIC_SLAVE_IMR ;
 int SCI_IRQ_NUM ;
 int i8042_enable_kbd_port () ;
 int inb (int ) ;
 int mips_machtype ;
 int outb (int,int ) ;

void setup_wakeup_events(void)
{
 int irq_mask;

 switch (mips_machtype) {
 case 129:
 case 128:

  outb((0xff & ~(1 << I8042_KBD_IRQ)), PIC_MASTER_IMR);
  irq_mask = inb(PIC_MASTER_IMR);


  i8042_enable_kbd_port();


  outb(irq_mask & ~(1 << PIC_CASCADE_IR), PIC_MASTER_IMR);
  inb(PIC_MASTER_IMR);
  outb(0xff & ~(1 << (SCI_IRQ_NUM - 8)), PIC_SLAVE_IMR);
  inb(PIC_SLAVE_IMR);

  break;

 default:
  break;
 }
}
