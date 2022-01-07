
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nand_chip {int dummy; } ;


 int TS_NAND_CTRL ;
 int readb (int ) ;

__attribute__((used)) static int ts78xx_ts_nand_dev_ready(struct nand_chip *chip)
{
 return readb(TS_NAND_CTRL) & 0x20;
}
