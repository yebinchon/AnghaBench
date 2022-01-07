
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int s3c_pm_check_cleanup () ;

__attribute__((used)) static void s3c_pm_finish(void)
{
 s3c_pm_check_cleanup();
}
