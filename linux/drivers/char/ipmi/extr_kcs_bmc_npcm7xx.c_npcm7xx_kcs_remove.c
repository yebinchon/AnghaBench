
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct kcs_bmc {int miscdev; } ;


 struct kcs_bmc* dev_get_drvdata (int *) ;
 int misc_deregister (int *) ;

__attribute__((used)) static int npcm7xx_kcs_remove(struct platform_device *pdev)
{
 struct kcs_bmc *kcs_bmc = dev_get_drvdata(&pdev->dev);

 misc_deregister(&kcs_bmc->miscdev);

 return 0;
}
