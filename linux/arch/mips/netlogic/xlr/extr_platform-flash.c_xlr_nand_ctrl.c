
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nand_chip {int dummy; } ;
struct TYPE_2__ {int cs; int flash_mmio; } ;


 int FLASH_NAND_ALE (int ) ;
 int FLASH_NAND_CLE (int ) ;
 unsigned int NAND_ALE ;
 unsigned int NAND_CLE ;
 TYPE_1__ nand_priv ;
 int nlm_write_reg (int ,int ,int) ;

__attribute__((used)) static void xlr_nand_ctrl(struct nand_chip *chip, int cmd,
     unsigned int ctrl)
{
 if (ctrl & NAND_CLE)
  nlm_write_reg(nand_priv.flash_mmio,
   FLASH_NAND_CLE(nand_priv.cs), cmd);
 else if (ctrl & NAND_ALE)
  nlm_write_reg(nand_priv.flash_mmio,
   FLASH_NAND_ALE(nand_priv.cs), cmd);
}
