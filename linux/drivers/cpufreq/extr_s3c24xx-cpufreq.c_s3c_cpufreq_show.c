
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int p_divisor; int h_divisor; } ;
struct TYPE_5__ {int pclk; int hclk; int armclk; int fclk; } ;
struct TYPE_4__ {int frequency; } ;
struct s3c_cpufreq_config {TYPE_3__ divs; TYPE_2__ freq; TYPE_1__ pll; } ;


 int s3c_freq_dbg (char*,char const*,int ,int ,int ,int ,int ,int ,int ) ;

__attribute__((used)) static void s3c_cpufreq_show(const char *pfx,
     struct s3c_cpufreq_config *cfg)
{
 s3c_freq_dbg("%s: Fvco=%u, F=%lu, A=%lu, H=%lu (%u), P=%lu (%u)\n",
       pfx, cfg->pll.frequency, cfg->freq.fclk, cfg->freq.armclk,
       cfg->freq.hclk, cfg->divs.h_divisor,
       cfg->freq.pclk, cfg->divs.p_divisor);
}
