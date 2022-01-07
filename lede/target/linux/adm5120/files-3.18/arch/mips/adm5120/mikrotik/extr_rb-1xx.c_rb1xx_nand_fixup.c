
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * layout; } ;
struct nand_chip {TYPE_1__ ecc; } ;
struct mtd_info {int writesize; struct nand_chip* priv; } ;


 int rb1xx_nand_ecclayout ;

__attribute__((used)) static int rb1xx_nand_fixup(struct mtd_info *mtd)
{
 struct nand_chip *chip = mtd->priv;

 if (mtd->writesize == 512)
  chip->ecc.layout = &rb1xx_nand_ecclayout;

 return 0;
}
