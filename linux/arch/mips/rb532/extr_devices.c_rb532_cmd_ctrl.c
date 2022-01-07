
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int IO_ADDR_W; } ;
struct nand_chip {TYPE_1__ legacy; } ;


 unsigned int NAND_ALE ;
 unsigned int NAND_CLE ;
 int NAND_CMD_NONE ;
 unsigned int NAND_CTRL_CHANGE ;
 int set_latch_u5 (unsigned char,unsigned char) ;
 int writeb (int,int ) ;

__attribute__((used)) static void rb532_cmd_ctrl(struct nand_chip *chip, int cmd, unsigned int ctrl)
{
 unsigned char orbits, nandbits;

 if (ctrl & NAND_CTRL_CHANGE) {
  orbits = (ctrl & NAND_CLE) << 1;
  orbits |= (ctrl & NAND_ALE) >> 1;

  nandbits = (~ctrl & NAND_CLE) << 1;
  nandbits |= (~ctrl & NAND_ALE) >> 1;

  set_latch_u5(orbits, nandbits);
 }
 if (cmd != NAND_CMD_NONE)
  writeb(cmd, chip->legacy.IO_ADDR_W);
}
