
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CPUHP_SH_SH3X_PREPARE ;
 int cpuhp_setup_state_nocalls (int ,char*,int ,int *) ;
 int shx3_cpu_prepare ;

__attribute__((used)) static int register_shx3_cpu_notifier(void)
{
 cpuhp_setup_state_nocalls(CPUHP_SH_SH3X_PREPARE, "sh/shx3:prepare",
      shx3_cpu_prepare, ((void*)0));
 return 0;
}
