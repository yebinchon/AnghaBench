
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __u32 ;


 int EMR_BASE ;
 int ESR_BASE ;
 int HW_EVENT_IRQ_BASE ;
 int inl (int) ;

int systemasic_irq_demux(int irq)
{
 __u32 emr, esr, status, level;
 __u32 j, bit;

 switch (irq) {
 case 13:
  level = 0;
  break;
 case 11:
  level = 1;
  break;
 case 9:
  level = 2;
  break;
 default:
  return irq;
 }
 emr = EMR_BASE + (level << 4) + (level << 2);
 esr = ESR_BASE + (level << 2);


 status = inl(esr);
 status &= inl(emr);


 for (bit = 1, j = 0; j < 32; bit <<= 1, j++) {
  if (status & bit) {
   irq = HW_EVENT_IRQ_BASE + j + (level << 5);
   return irq;
  }
 }


 return irq;
}
