
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* prepare ) () ;} ;


 TYPE_1__* puv3_cpu_pm_fns ;
 int stub1 () ;

__attribute__((used)) static int puv3_pm_prepare(void)
{
 int ret = 0;

 if (puv3_cpu_pm_fns && puv3_cpu_pm_fns->prepare)
  ret = puv3_cpu_pm_fns->prepare();

 return ret;
}
