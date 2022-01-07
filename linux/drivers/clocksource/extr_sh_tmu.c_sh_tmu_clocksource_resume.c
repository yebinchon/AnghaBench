
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sh_tmu_channel {TYPE_2__* tmu; int enable_count; int cs_enabled; } ;
struct clocksource {int dummy; } ;
struct TYPE_4__ {TYPE_1__* pdev; } ;
struct TYPE_3__ {int dev; } ;


 int __sh_tmu_enable (struct sh_tmu_channel*) ;
 struct sh_tmu_channel* cs_to_sh_tmu (struct clocksource*) ;
 int pm_genpd_syscore_poweron (int *) ;

__attribute__((used)) static void sh_tmu_clocksource_resume(struct clocksource *cs)
{
 struct sh_tmu_channel *ch = cs_to_sh_tmu(cs);

 if (!ch->cs_enabled)
  return;

 if (ch->enable_count++ == 0) {
  pm_genpd_syscore_poweron(&ch->tmu->pdev->dev);
  __sh_tmu_enable(ch);
 }
}
