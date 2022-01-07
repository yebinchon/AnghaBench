
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
 int RB150_GPIO_NAND_ALE ;
 int RB150_GPIO_NAND_CLE ;
 int RB150_GPIO_NAND_NCE ;
 int RB150_NAND_DELAY ;
 int RB150_NAND_WRITE (int) ;
 int gpio_set_value (int ,int) ;
 int udelay (int ) ;

__attribute__((used)) static void rb150_nand_cmd_ctrl(struct mtd_info *mtd, int cmd,
  unsigned int ctrl)
{
 if (ctrl & NAND_CTRL_CHANGE) {
  gpio_set_value(RB150_GPIO_NAND_CLE, (ctrl & NAND_CLE) ? 1 : 0);
  gpio_set_value(RB150_GPIO_NAND_ALE, (ctrl & NAND_ALE) ? 1 : 0);
  gpio_set_value(RB150_GPIO_NAND_NCE, (ctrl & NAND_NCE) ? 0 : 1);
 }

 udelay(RB150_NAND_DELAY);

 if (cmd != NAND_CMD_NONE)
  RB150_NAND_WRITE(cmd);
}
