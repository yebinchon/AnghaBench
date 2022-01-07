
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nand_chip {int dummy; } ;


 int NAND_CTRL_ADDR (struct nand_chip*) ;
 int SNAPPERCL15_NAND_RDY ;
 int __raw_readw (int ) ;

__attribute__((used)) static int snappercl15_nand_dev_ready(struct nand_chip *chip)
{
 return !!(__raw_readw(NAND_CTRL_ADDR(chip)) & SNAPPERCL15_NAND_RDY);
}
