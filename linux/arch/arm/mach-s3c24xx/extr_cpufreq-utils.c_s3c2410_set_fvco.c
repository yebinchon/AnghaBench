
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int frequency; } ;
struct s3c_cpufreq_config {TYPE_1__ pll; int mpll; } ;


 int IS_ERR (int ) ;
 int clk_set_rate (int ,int ) ;

void s3c2410_set_fvco(struct s3c_cpufreq_config *cfg)
{
 if (!IS_ERR(cfg->mpll))
  clk_set_rate(cfg->mpll, cfg->pll.frequency);
}
