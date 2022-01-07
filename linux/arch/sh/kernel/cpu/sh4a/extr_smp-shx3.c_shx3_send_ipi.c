
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BUG_ON (int) ;
 int __raw_writel (int,unsigned long) ;

__attribute__((used)) static void shx3_send_ipi(unsigned int cpu, unsigned int message)
{
 unsigned long addr = 0xfe410070 + (cpu * 4);

 BUG_ON(cpu >= 4);

 __raw_writel(1 << (message << 2), addr);
}
