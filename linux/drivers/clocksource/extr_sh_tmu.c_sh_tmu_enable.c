
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sh_tmu_channel {TYPE_2__* tmu; int enable_count; } ;
struct TYPE_4__ {TYPE_1__* pdev; } ;
struct TYPE_3__ {int dev; } ;


 int __sh_tmu_enable (struct sh_tmu_channel*) ;
 int dev_pm_syscore_device (int *,int) ;
 int pm_runtime_get_sync (int *) ;

__attribute__((used)) static int sh_tmu_enable(struct sh_tmu_channel *ch)
{
 if (ch->enable_count++ > 0)
  return 0;

 pm_runtime_get_sync(&ch->tmu->pdev->dev);
 dev_pm_syscore_device(&ch->tmu->pdev->dev, 1);

 return __sh_tmu_enable(ch);
}
