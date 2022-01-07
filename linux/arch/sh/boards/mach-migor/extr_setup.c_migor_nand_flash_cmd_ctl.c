
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ IO_ADDR_W; } ;
struct nand_chip {TYPE_1__ legacy; } ;


 unsigned int NAND_ALE ;
 unsigned int NAND_CLE ;
 int NAND_CMD_NONE ;
 int writeb (int,scalar_t__) ;

__attribute__((used)) static void migor_nand_flash_cmd_ctl(struct nand_chip *chip, int cmd,
         unsigned int ctrl)
{
 if (cmd == NAND_CMD_NONE)
  return;

 if (ctrl & NAND_CLE)
  writeb(cmd, chip->legacy.IO_ADDR_W + 0x00400000);
 else if (ctrl & NAND_ALE)
  writeb(cmd, chip->legacy.IO_ADDR_W + 0x00800000);
 else
  writeb(cmd, chip->legacy.IO_ADDR_W);
}
