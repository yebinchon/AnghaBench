
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int h_divisor; int p_divisor; } ;
struct s3c_cpufreq_config {TYPE_1__ divs; } ;


 int S3C2410_CLKDIVN ;
 int S3C2410_CLKDIVN_HDIVN ;
 int S3C2410_CLKDIVN_PDIVN ;
 int __raw_writel (int ,int ) ;

__attribute__((used)) static void s3c2410_cpufreq_setdivs(struct s3c_cpufreq_config *cfg)
{
 u32 clkdiv = 0;

 if (cfg->divs.h_divisor == 2)
  clkdiv |= S3C2410_CLKDIVN_HDIVN;

 if (cfg->divs.p_divisor != cfg->divs.h_divisor)
  clkdiv |= S3C2410_CLKDIVN_PDIVN;

 __raw_writel(clkdiv, S3C2410_CLKDIVN);
}
