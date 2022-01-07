
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct s3c_cpufreq_config {TYPE_1__* info; int mpll; } ;
struct TYPE_2__ {int (* set_fvco ) (struct s3c_cpufreq_config*) ;} ;


 int _clk_mpll ;
 int stub1 (struct s3c_cpufreq_config*) ;

__attribute__((used)) static void s3c_cpufreq_setfvco(struct s3c_cpufreq_config *cfg)
{
 cfg->mpll = _clk_mpll;
 (cfg->info->set_fvco)(cfg);
}
