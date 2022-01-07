
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int S3C2412_INFORM0 ;
 int S3C2412_INFORM1 ;
 int S3C2443_PWRMODE ;
 int __raw_writel (int,int ) ;

__attribute__((used)) static void s3c2416_pm_resume(void)
{

 __raw_writel(0x0, S3C2443_PWRMODE);
 __raw_writel(0x0, S3C2412_INFORM0);
 __raw_writel(0x0, S3C2412_INFORM1);
}
