
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct platform_device {int dummy; } ;
struct hisi_crg_dev {TYPE_1__* funcs; int rstc; } ;
struct TYPE_2__ {int (* unregister_clks ) (struct platform_device*) ;} ;


 int hisi_reset_exit (int ) ;
 struct hisi_crg_dev* platform_get_drvdata (struct platform_device*) ;
 int stub1 (struct platform_device*) ;

__attribute__((used)) static int hi3516cv300_crg_remove(struct platform_device *pdev)
{
 struct hisi_crg_dev *crg = platform_get_drvdata(pdev);

 hisi_reset_exit(crg->rstc);
 crg->funcs->unregister_clks(pdev);
 return 0;
}
