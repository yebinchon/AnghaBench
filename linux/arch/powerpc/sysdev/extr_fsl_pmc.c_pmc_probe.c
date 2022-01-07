
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int of_node; } ;
struct platform_device {TYPE_1__ dev; } ;


 int ENOMEM ;
 int of_iomap (int ,int ) ;
 TYPE_1__* pmc_dev ;
 int pmc_regs ;
 int pmc_suspend_ops ;
 int suspend_set_ops (int *) ;

__attribute__((used)) static int pmc_probe(struct platform_device *ofdev)
{
 pmc_regs = of_iomap(ofdev->dev.of_node, 0);
 if (!pmc_regs)
  return -ENOMEM;

 pmc_dev = &ofdev->dev;
 suspend_set_ops(&pmc_suspend_ops);
 return 0;
}
