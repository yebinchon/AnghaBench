
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int OPAL_CONFIG_IDLE_APPLY ;
 int OPAL_CONFIG_IDLE_FASTSLEEP ;
 int opal_config_cpu_idle_state (int ,int ) ;

__attribute__((used)) static void pnv_fastsleep_workaround_apply(void *info)

{
 int rc;
 int *err = info;

 rc = opal_config_cpu_idle_state(OPAL_CONFIG_IDLE_FASTSLEEP,
     OPAL_CONFIG_IDLE_APPLY);
 if (rc)
  *err = 1;
}
