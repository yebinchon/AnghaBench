
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * crcs ;
 int s3c_pm_run_sysram (int ,int *) ;
 int s3c_pm_runcheck ;

void s3c_pm_check_restore(void)
{
 if (crcs != ((void*)0))
  s3c_pm_run_sysram(s3c_pm_runcheck, crcs);
}
