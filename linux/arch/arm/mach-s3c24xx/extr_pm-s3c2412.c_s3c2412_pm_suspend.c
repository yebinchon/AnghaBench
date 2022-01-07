
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ARRAY_SIZE (int ) ;
 int s3c2412_sleep ;
 int s3c_pm_do_save (int ,int ) ;

__attribute__((used)) static int s3c2412_pm_suspend(void)
{
 s3c_pm_do_save(s3c2412_sleep, ARRAY_SIZE(s3c2412_sleep));
 return 0;
}
