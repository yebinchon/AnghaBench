
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PMAC_FTR_WRITE_GPIO ;
 int local_delay (int) ;
 int low_choose_7447a_dfs (int) ;
 int pmac_call_feature (int ,int *,int ,int) ;
 int udelay (int) ;
 int voltage_gpio ;

__attribute__((used)) static int dfs_set_cpu_speed(int low_speed)
{
 if (low_speed == 0) {

  pmac_call_feature(PMAC_FTR_WRITE_GPIO, ((void*)0), voltage_gpio, 0x05);

  local_delay(1);
 }





 udelay(100);

 if (low_speed == 1) {

  pmac_call_feature(PMAC_FTR_WRITE_GPIO, ((void*)0), voltage_gpio, 0x04);
  local_delay(1);
 }

 return 0;
}
