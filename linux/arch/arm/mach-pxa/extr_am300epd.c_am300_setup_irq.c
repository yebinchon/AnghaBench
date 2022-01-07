
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fb_info {struct broadsheetfb_par* par; } ;
struct broadsheetfb_par {int dummy; } ;
struct TYPE_2__ {int dev; } ;


 int IRQF_TRIGGER_RISING ;
 int PXA_GPIO_TO_IRQ (int ) ;
 int RDY_GPIO_PIN ;
 TYPE_1__* am300_device ;
 int am300_handle_irq ;
 int dev_err (int *,char*,int) ;
 int request_irq (int ,int ,int ,char*,struct broadsheetfb_par*) ;

__attribute__((used)) static int am300_setup_irq(struct fb_info *info)
{
 int ret;
 struct broadsheetfb_par *par = info->par;

 ret = request_irq(PXA_GPIO_TO_IRQ(RDY_GPIO_PIN), am300_handle_irq,
    IRQF_TRIGGER_RISING, "AM300", par);
 if (ret)
  dev_err(&am300_device->dev, "request_irq failed: %d\n", ret);

 return ret;
}
