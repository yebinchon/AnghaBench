
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ IO_ADDR_W; } ;
struct nand_chip {TYPE_1__ legacy; } ;


 unsigned int NAND_CLE ;
 int NAND_CMD_NONE ;
 int writeb (int,scalar_t__) ;

__attribute__((used)) static void qong_nand_cmd_ctrl(struct nand_chip *nand_chip, int cmd,
          unsigned int ctrl)
{
 if (cmd == NAND_CMD_NONE)
  return;

 if (ctrl & NAND_CLE)
  writeb(cmd, nand_chip->legacy.IO_ADDR_W + (1 << 24));
 else
  writeb(cmd, nand_chip->legacy.IO_ADDR_W + (1 << 23));
}
