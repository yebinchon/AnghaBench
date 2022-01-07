
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct clock_event_device {int dummy; } ;
struct TYPE_6__ {TYPE_2__* tmu; } ;
struct TYPE_5__ {TYPE_1__* pdev; } ;
struct TYPE_4__ {int dev; } ;


 TYPE_3__* ced_to_sh_tmu (struct clock_event_device*) ;
 int pm_genpd_syscore_poweron (int *) ;

__attribute__((used)) static void sh_tmu_clock_event_resume(struct clock_event_device *ced)
{
 pm_genpd_syscore_poweron(&ced_to_sh_tmu(ced)->tmu->pdev->dev);
}
