
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct cplds {scalar_t__ base; int irq_mask; } ;


 scalar_t__ FPGA_IRQ_MASK_EN ;
 struct cplds* platform_get_drvdata (struct platform_device*) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static int cplds_resume(struct platform_device *pdev)
{
 struct cplds *fpga = platform_get_drvdata(pdev);

 writel(fpga->irq_mask, fpga->base + FPGA_IRQ_MASK_EN);

 return 0;
}
