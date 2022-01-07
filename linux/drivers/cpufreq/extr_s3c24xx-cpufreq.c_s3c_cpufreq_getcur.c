
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {unsigned long h_divisor; unsigned long p_divisor; } ;
struct TYPE_5__ {unsigned long fclk; unsigned long hclk; unsigned long pclk; unsigned long armclk; int hclk_tns; } ;
struct TYPE_4__ {unsigned long frequency; int driver_data; } ;
struct s3c_cpufreq_config {TYPE_3__ divs; TYPE_2__ freq; TYPE_1__ pll; } ;


 int S3C2410_MPLLCON ;
 int __raw_readl (int ) ;
 int clk_arm ;
 int clk_fclk ;
 unsigned long clk_get_rate (int ) ;
 int clk_hclk ;
 int clk_pclk ;

__attribute__((used)) static void s3c_cpufreq_getcur(struct s3c_cpufreq_config *cfg)
{
 unsigned long fclk, pclk, hclk, armclk;

 cfg->freq.fclk = fclk = clk_get_rate(clk_fclk);
 cfg->freq.hclk = hclk = clk_get_rate(clk_hclk);
 cfg->freq.pclk = pclk = clk_get_rate(clk_pclk);
 cfg->freq.armclk = armclk = clk_get_rate(clk_arm);

 cfg->pll.driver_data = __raw_readl(S3C2410_MPLLCON);
 cfg->pll.frequency = fclk;

 cfg->freq.hclk_tns = 1000000000 / (cfg->freq.hclk / 10);

 cfg->divs.h_divisor = fclk / hclk;
 cfg->divs.p_divisor = fclk / pclk;
}
