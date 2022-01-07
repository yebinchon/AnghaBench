
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct of_device_id {int dummy; } ;


 int platform_device_register_data (int *,char*,int,struct of_device_id const*,int) ;
 struct of_device_id* ti_cpufreq_match_node () ;

__attribute__((used)) static int ti_cpufreq_init(void)
{
 const struct of_device_id *match;


 match = ti_cpufreq_match_node();
 if (match)
  platform_device_register_data(((void*)0), "ti-cpufreq", -1, match,
           sizeof(*match));

 return 0;
}
