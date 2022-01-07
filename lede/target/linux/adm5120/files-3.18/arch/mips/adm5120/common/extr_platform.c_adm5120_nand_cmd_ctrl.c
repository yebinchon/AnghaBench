
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtd_info {int dummy; } ;


 unsigned int NAND_ALE ;
 unsigned int NAND_CLE ;
 int NAND_CMD_NONE ;
 unsigned int NAND_CTRL_CHANGE ;
 unsigned int NAND_NCE ;
 int NAND_REG_DATA ;
 int NAND_WRITE_REG (int ,int) ;
 int adm5120_nand_set_ale (unsigned int) ;
 int adm5120_nand_set_cen (unsigned int) ;
 int adm5120_nand_set_cle (unsigned int) ;

__attribute__((used)) static void adm5120_nand_cmd_ctrl(struct mtd_info *mtd, int cmd,
     unsigned int ctrl)
{
 if (ctrl & NAND_CTRL_CHANGE) {
  adm5120_nand_set_cle(ctrl & NAND_CLE);
  adm5120_nand_set_ale(ctrl & NAND_ALE);
  adm5120_nand_set_cen(ctrl & NAND_NCE);
 }

 if (cmd != NAND_CMD_NONE)
  NAND_WRITE_REG(NAND_REG_DATA, cmd);
}
