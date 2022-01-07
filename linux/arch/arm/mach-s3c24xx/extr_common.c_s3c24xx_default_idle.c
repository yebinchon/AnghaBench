
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int S3C2410_CLKCON ;
 unsigned long S3C2410_CLKCON_IDLE ;
 unsigned long __raw_readl (int ) ;
 int __raw_writel (unsigned long,int ) ;

__attribute__((used)) static void s3c24xx_default_idle(void)
{
 unsigned long tmp = 0;
 int i;







 __raw_writel(__raw_readl(S3C2410_CLKCON) | S3C2410_CLKCON_IDLE,
       S3C2410_CLKCON);


 for (i = 0; i < 50; i++)
  tmp += __raw_readl(S3C2410_CLKCON);



 __raw_writel(__raw_readl(S3C2410_CLKCON) & ~S3C2410_CLKCON_IDLE,
       S3C2410_CLKCON);
}
