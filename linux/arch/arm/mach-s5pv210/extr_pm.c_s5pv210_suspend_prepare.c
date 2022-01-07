
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int s3c_pm_check_prepare () ;

__attribute__((used)) static int s5pv210_suspend_prepare(void)
{
 s3c_pm_check_prepare();

 return 0;
}
