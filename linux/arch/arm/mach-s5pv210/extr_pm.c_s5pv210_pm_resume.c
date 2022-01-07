
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ARRAY_SIZE (int ) ;
 int s3c_pm_do_restore_core (int ,int ) ;
 int s5pv210_core_save ;

__attribute__((used)) static void s5pv210_pm_resume(void)
{
 s3c_pm_do_restore_core(s5pv210_core_save, ARRAY_SIZE(s5pv210_core_save));
}
