
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PMAC_FTR_READ_GPIO ;
 int PMAC_FTR_WRITE_GPIO ;
 int core99_tb_gpio ;
 int pmac_call_feature (int ,int *,int ,int) ;

__attribute__((used)) static void smp_core99_gpio_tb_freeze(int freeze)
{
 if (freeze)
  pmac_call_feature(PMAC_FTR_WRITE_GPIO, ((void*)0), core99_tb_gpio, 4);
 else
  pmac_call_feature(PMAC_FTR_WRITE_GPIO, ((void*)0), core99_tb_gpio, 0);
 pmac_call_feature(PMAC_FTR_READ_GPIO, ((void*)0), core99_tb_gpio, 0);
}
