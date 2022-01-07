
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;


 unsigned int IRQ_EINT (unsigned int) ;
 int S3C64XX_EINT0MASK ;
 int S3C64XX_EINT0PEND ;
 unsigned int __raw_readl (int ) ;
 int generic_handle_irq (unsigned int) ;

__attribute__((used)) static inline void s3c_irq_demux_eint(unsigned int start, unsigned int end)
{
 u32 status = __raw_readl(S3C64XX_EINT0PEND);
 u32 mask = __raw_readl(S3C64XX_EINT0MASK);
 unsigned int irq;

 status &= ~mask;
 status >>= start;
 status &= (1 << (end - start + 1)) - 1;

 for (irq = IRQ_EINT(start); irq <= IRQ_EINT(end); irq++) {
  if (status & 1)
   generic_handle_irq(irq);

  status >>= 1;
 }
}
