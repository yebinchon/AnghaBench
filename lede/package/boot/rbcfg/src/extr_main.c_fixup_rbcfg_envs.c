
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rbcfg_value {scalar_t__ id; int num_values; struct rbcfg_value const* values; } ;


 int ARRAY_SIZE (struct rbcfg_value*) ;


 int RBCFG_SOC_UNKNOWN ;
 scalar_t__ RB_ID_CPU_FREQ ;
 scalar_t__ RB_ID_TERMINATOR ;
 int cpuinfo_find_soc () ;
 struct rbcfg_value* rbcfg_cpu_freq_ar9344 ;
 struct rbcfg_value* rbcfg_cpu_freq_qca953x ;
 struct rbcfg_value* rbcfg_envs ;

__attribute__((used)) static void fixup_rbcfg_envs(void)
{
 int i, num_val, soc_type;
 const struct rbcfg_value * env_value;


 soc_type = cpuinfo_find_soc();


 switch (soc_type) {
  case 128:
   env_value = rbcfg_cpu_freq_qca953x;
   num_val = ARRAY_SIZE(rbcfg_cpu_freq_qca953x);
   break;
  case 129:
   env_value = rbcfg_cpu_freq_ar9344;
   num_val = ARRAY_SIZE(rbcfg_cpu_freq_ar9344);
   break;
 }

 for (i = 0; i < ARRAY_SIZE(rbcfg_envs); i++) {
  if (RB_ID_CPU_FREQ == rbcfg_envs[i].id) {
   if (RBCFG_SOC_UNKNOWN == soc_type)
    rbcfg_envs[i].id = RB_ID_TERMINATOR;
   else {
    rbcfg_envs[i].values = env_value;
    rbcfg_envs[i].num_values = num_val;
   }
   break;
  }
 }
}
