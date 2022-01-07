
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MDREFR ;
 int MSC0 ;
 int MSC1 ;
 int MSC2 ;
 int __raw_readl (int ) ;
 int __raw_writel (int,int ) ;

__attribute__((used)) static void fix_msc(void)
{
 __raw_writel(0x129c24f2, MSC0);
 __raw_writel(0x7ff424fa, MSC1);
 __raw_writel(0x7ff47ff4, MSC2);

 __raw_writel(__raw_readl(MDREFR) | 0x02080000, MDREFR);
}
