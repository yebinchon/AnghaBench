
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mpc_intsrc {int irqflag; int dstirq; int dstapic; int srcbusirq; int srcbus; int irqtype; } ;


 int APIC_VERBOSE ;
 int MAX_IRQ_SOURCES ;
 int apic_printk (int ,char*,int ,int,int,int ,int ,int ,int ) ;
 int memcmp (int *,struct mpc_intsrc*,int) ;
 int memcpy (int *,struct mpc_intsrc*,int) ;
 int mp_irq_entries ;
 int * mp_irqs ;
 int panic (char*) ;

void mp_save_irq(struct mpc_intsrc *m)
{
 int i;

 apic_printk(APIC_VERBOSE, "Int: type %d, pol %d, trig %d, bus %02x,"
  " IRQ %02x, APIC ID %x, APIC INT %02x\n",
  m->irqtype, m->irqflag & 3, (m->irqflag >> 2) & 3, m->srcbus,
  m->srcbusirq, m->dstapic, m->dstirq);

 for (i = 0; i < mp_irq_entries; i++) {
  if (!memcmp(&mp_irqs[i], m, sizeof(*m)))
   return;
 }

 memcpy(&mp_irqs[mp_irq_entries], m, sizeof(*m));
 if (++mp_irq_entries == MAX_IRQ_SOURCES)
  panic("Max # of irq sources exceeded!!\n");
}
