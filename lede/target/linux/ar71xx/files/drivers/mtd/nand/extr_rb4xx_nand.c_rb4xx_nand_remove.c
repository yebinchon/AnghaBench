
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rb4xx_nand_info {int dummy; } ;
struct platform_device {int dummy; } ;


 int RB4XX_NAND_GPIO_ALE ;
 int RB4XX_NAND_GPIO_CLE ;
 int RB4XX_NAND_GPIO_NCE ;
 int RB4XX_NAND_GPIO_READY ;
 int gpio_free (int ) ;
 int kfree (struct rb4xx_nand_info*) ;
 int nand_release (int ) ;
 struct rb4xx_nand_info* platform_get_drvdata (struct platform_device*) ;
 int platform_set_drvdata (struct platform_device*,int *) ;
 int rbinfo_to_mtd (struct rb4xx_nand_info*) ;

__attribute__((used)) static int rb4xx_nand_remove(struct platform_device *pdev)
{
 struct rb4xx_nand_info *info = platform_get_drvdata(pdev);

 nand_release(rbinfo_to_mtd(info));
 platform_set_drvdata(pdev, ((void*)0));
 kfree(info);
 gpio_free(RB4XX_NAND_GPIO_NCE);
 gpio_free(RB4XX_NAND_GPIO_CLE);
 gpio_free(RB4XX_NAND_GPIO_ALE);
 gpio_free(RB4XX_NAND_GPIO_READY);

 return 0;
}
