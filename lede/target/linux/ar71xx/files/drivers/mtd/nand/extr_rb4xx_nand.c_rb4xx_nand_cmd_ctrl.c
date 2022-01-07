
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
 int RB4XX_NAND_GPIO_ALE ;
 int RB4XX_NAND_GPIO_CLE ;
 int RB4XX_NAND_GPIO_NCE ;
 int gpio_set_value_cansleep (int ,int) ;
 int rb4xx_nand_write_cmd (int) ;

__attribute__((used)) static void rb4xx_nand_cmd_ctrl(struct mtd_info *mtd, int cmd,
    unsigned int ctrl)
{
 if (ctrl & NAND_CTRL_CHANGE) {
  gpio_set_value_cansleep(RB4XX_NAND_GPIO_CLE,
     (ctrl & NAND_CLE) ? 1 : 0);
  gpio_set_value_cansleep(RB4XX_NAND_GPIO_ALE,
     (ctrl & NAND_ALE) ? 1 : 0);
  gpio_set_value_cansleep(RB4XX_NAND_GPIO_NCE,
     (ctrl & NAND_NCE) ? 0 : 1);
 }

 if (cmd != NAND_CMD_NONE)
  rb4xx_nand_write_cmd(cmd);
}
