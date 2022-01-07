
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sh_tmu_channel {scalar_t__ enable_count; TYPE_2__* tmu; } ;
struct TYPE_4__ {TYPE_1__* pdev; } ;
struct TYPE_3__ {int dev; } ;


 scalar_t__ WARN_ON (int) ;
 int __sh_tmu_disable (struct sh_tmu_channel*) ;
 int dev_pm_syscore_device (int *,int) ;
 int pm_runtime_put (int *) ;

__attribute__((used)) static void sh_tmu_disable(struct sh_tmu_channel *ch)
{
 if (WARN_ON(ch->enable_count == 0))
  return;

 if (--ch->enable_count > 0)
  return;

 __sh_tmu_disable(ch);

 dev_pm_syscore_device(&ch->tmu->pdev->dev, 0);
 pm_runtime_put(&ch->tmu->pdev->dev);
}
