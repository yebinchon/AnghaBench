
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nand_chip {int oob_poi; } ;
struct mtd_info {int oobsize; int writesize; } ;
struct ar934x_nfc {int buf; } ;


 int NAND_CMD_PAGEPROG ;
 int ar934x_nfc_send_write (struct ar934x_nfc*,int ,int ,int,int ) ;
 int memcpy (int ,int ,int ) ;
 struct ar934x_nfc* mtd_to_ar934x_nfc (struct mtd_info*) ;
 int nfc_dbg (struct ar934x_nfc*,char*,int) ;

__attribute__((used)) static int
ar934x_nfc_write_oob(struct mtd_info *mtd, struct nand_chip *chip,
       int page)
{
 struct ar934x_nfc *nfc = mtd_to_ar934x_nfc(mtd);

 nfc_dbg(nfc, "write_oob: page:%d\n", page);

 memcpy(nfc->buf, chip->oob_poi, mtd->oobsize);

 return ar934x_nfc_send_write(nfc, NAND_CMD_PAGEPROG, mtd->writesize,
         page, mtd->oobsize);
}
