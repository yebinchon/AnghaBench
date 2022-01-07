
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct cplds {int irq; } ;


 int irq_set_chip_and_handler (int ,int *,int *) ;
 struct cplds* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int cplds_remove(struct platform_device *pdev)
{
 struct cplds *fpga = platform_get_drvdata(pdev);

 irq_set_chip_and_handler(fpga->irq, ((void*)0), ((void*)0));

 return 0;
}
