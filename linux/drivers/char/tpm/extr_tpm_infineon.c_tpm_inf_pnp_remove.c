
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tpm_chip {int dummy; } ;
struct pnp_dev {int dummy; } ;
struct TYPE_2__ {scalar_t__ iotype; int map_size; int map_base; int mem_base; int config_size; int config_port; int data_size; int data_regs; } ;


 scalar_t__ TPM_INF_IO_PORT ;
 int iounmap (int ) ;
 struct tpm_chip* pnp_get_drvdata (struct pnp_dev*) ;
 int release_mem_region (int ,int ) ;
 int release_region (int ,int ) ;
 int tpm_chip_unregister (struct tpm_chip*) ;
 TYPE_1__ tpm_dev ;

__attribute__((used)) static void tpm_inf_pnp_remove(struct pnp_dev *dev)
{
 struct tpm_chip *chip = pnp_get_drvdata(dev);

 tpm_chip_unregister(chip);

 if (tpm_dev.iotype == TPM_INF_IO_PORT) {
  release_region(tpm_dev.data_regs, tpm_dev.data_size);
  release_region(tpm_dev.config_port,
          tpm_dev.config_size);
 } else {
  iounmap(tpm_dev.mem_base);
  release_mem_region(tpm_dev.map_base, tpm_dev.map_size);
 }
}
