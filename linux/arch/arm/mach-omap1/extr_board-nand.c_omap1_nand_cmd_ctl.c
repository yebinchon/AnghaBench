
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

void omap1_nand_cmd_ctl(struct nand_chip *this, int cmd, unsigned int ctrl)
{
 unsigned long mask;

 if (cmd == NAND_CMD_NONE)
  return;

 mask = (ctrl & NAND_CLE) ? 0x02 : 0;
 if (ctrl & NAND_ALE)
  mask |= 0x04;

 writeb(cmd, this->legacy.IO_ADDR_W + mask);
}
