
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tpm_chip {int dummy; } ;
struct platform_device {int dev; } ;


 struct tpm_chip* dev_get_drvdata (int *) ;
 int tpm_chip_unregister (struct tpm_chip*) ;
 int tpm_tis_remove (struct tpm_chip*) ;

__attribute__((used)) static int tpm_tis_plat_remove(struct platform_device *pdev)
{
 struct tpm_chip *chip = dev_get_drvdata(&pdev->dev);

 tpm_chip_unregister(chip);
 tpm_tis_remove(chip);

 return 0;
}
