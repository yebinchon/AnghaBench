
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 unsigned int __raw_readl (int) ;
 int __raw_writel (unsigned int,int) ;
 unsigned int hard_smp_processor_id () ;
 int smp_message_recv (unsigned int) ;

__attribute__((used)) static irqreturn_t ipi_interrupt_handler(int irq, void *arg)
{
 unsigned int message = (unsigned int)(long)arg;
 unsigned int cpu = hard_smp_processor_id();
 unsigned int offs = 4 * cpu;
 unsigned int x;

 x = __raw_readl(0xfe410070 + offs);
 x &= (1 << (message << 2));
 __raw_writel(x, 0xfe410080 + offs);

 smp_message_recv(message);

 return IRQ_HANDLED;
}
