
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct s3c_cpufreq_config {TYPE_1__* info; } ;
struct TYPE_2__ {int (* calc_divs ) (struct s3c_cpufreq_config*) ;} ;


 int stub1 (struct s3c_cpufreq_config*) ;

__attribute__((used)) static int s3c_cpufreq_calcdivs(struct s3c_cpufreq_config *cfg)
{
 return (cfg->info->calc_divs)(cfg);
}
