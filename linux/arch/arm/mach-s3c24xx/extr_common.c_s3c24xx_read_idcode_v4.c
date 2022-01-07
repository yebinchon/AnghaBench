
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int S3C2410_GSTATUS1 ;
 unsigned long __raw_readl (int ) ;

__attribute__((used)) static unsigned long s3c24xx_read_idcode_v4(void)
{
 return __raw_readl(S3C2410_GSTATUS1);
}
