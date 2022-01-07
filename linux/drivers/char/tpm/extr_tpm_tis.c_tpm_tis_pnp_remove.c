
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tpm_chip {int dummy; } ;
struct pnp_dev {int dummy; } ;


 struct tpm_chip* pnp_get_drvdata (struct pnp_dev*) ;
 int tpm_chip_unregister (struct tpm_chip*) ;
 int tpm_tis_remove (struct tpm_chip*) ;

__attribute__((used)) static void tpm_tis_pnp_remove(struct pnp_dev *dev)
{
 struct tpm_chip *chip = pnp_get_drvdata(dev);

 tpm_chip_unregister(chip);
 tpm_tis_remove(chip);
}
