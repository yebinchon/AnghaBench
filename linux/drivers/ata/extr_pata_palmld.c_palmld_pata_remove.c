
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct palmld_pata {int power; } ;


 int ata_platform_remove_one (struct platform_device*) ;
 int gpiod_set_value (int ,int ) ;
 struct palmld_pata* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int palmld_pata_remove(struct platform_device *pdev)
{
 struct palmld_pata *lda = platform_get_drvdata(pdev);

 ata_platform_remove_one(pdev);


 gpiod_set_value(lda->power, 0);

 return 0;
}
