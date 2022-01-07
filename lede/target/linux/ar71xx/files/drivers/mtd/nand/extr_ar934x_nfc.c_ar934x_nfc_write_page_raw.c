
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct nand_chip {int const* oob_poi; } ;
struct mtd_info {int writesize; int oobsize; } ;
struct ar934x_nfc {int * buf; } ;


 int NAND_CMD_PAGEPROG ;
 int ar934x_nfc_send_write (struct ar934x_nfc*,int ,int ,int,int) ;
 int memcpy (int *,int const*,int) ;
 struct ar934x_nfc* mtd_to_ar934x_nfc (struct mtd_info*) ;
 int nfc_dbg (struct ar934x_nfc*,char*,int,int) ;

__attribute__((used)) static int
ar934x_nfc_write_page_raw(struct mtd_info *mtd, struct nand_chip *chip,
     const u8 *buf, int oob_required, int page)
{
 struct ar934x_nfc *nfc = mtd_to_ar934x_nfc(mtd);
 int len;

 nfc_dbg(nfc, "write_page_raw: page:%d oob:%d\n", page, oob_required);

 memcpy(nfc->buf, buf, mtd->writesize);
 len = mtd->writesize;

 if (oob_required) {
  memcpy(&nfc->buf[mtd->writesize], chip->oob_poi, mtd->oobsize);
  len += mtd->oobsize;
 }

 return ar934x_nfc_send_write(nfc, NAND_CMD_PAGEPROG, 0, page, len);
}
