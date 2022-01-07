
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ti_cpufreq_data {TYPE_1__* soc_data; } ;
struct TYPE_2__ {unsigned long efuse_fallback; } ;



__attribute__((used)) static unsigned long amx3_efuse_xlate(struct ti_cpufreq_data *opp_data,
          unsigned long efuse)
{
 if (!efuse)
  efuse = opp_data->soc_data->efuse_fallback;

 return ~efuse;
}
