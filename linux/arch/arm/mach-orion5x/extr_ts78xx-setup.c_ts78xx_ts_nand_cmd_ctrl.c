
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
 unsigned int NAND_NCE ;
 int TS_NAND_CTRL ;
 int readb (int ) ;
 int writeb (int,int ) ;

__attribute__((used)) static void ts78xx_ts_nand_cmd_ctrl(struct nand_chip *this, int cmd,
        unsigned int ctrl)
{
 if (ctrl & NAND_CTRL_CHANGE) {
  unsigned char bits;

  bits = (ctrl & NAND_NCE) << 2;
  bits |= ctrl & NAND_CLE;
  bits |= (ctrl & NAND_ALE) >> 2;

  writeb((readb(TS_NAND_CTRL) & ~0x7) | bits, TS_NAND_CTRL);
 }

 if (cmd != NAND_CMD_NONE)
  writeb(cmd, this->legacy.IO_ADDR_W);
}
