
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct nand_chip {int * oob_poi; } ;
struct mtd_info {int writesize; int oobsize; } ;
struct ar934x_nfc {int * buf; } ;


 int NAND_CMD_READ0 ;
 int ar934x_nfc_send_read (struct ar934x_nfc*,int ,int ,int,int) ;
 int memcpy (int *,int *,int) ;
 struct ar934x_nfc* mtd_to_ar934x_nfc (struct mtd_info*) ;
 int nfc_dbg (struct ar934x_nfc*,char*,int,int) ;

__attribute__((used)) static int
ar934x_nfc_read_page_raw(struct mtd_info *mtd, struct nand_chip *chip,
    u8 *buf, int oob_required, int page)
{
 struct ar934x_nfc *nfc = mtd_to_ar934x_nfc(mtd);
 int len;
 int err;

 nfc_dbg(nfc, "read_page_raw: page:%d oob:%d\n", page, oob_required);

 len = mtd->writesize;
 if (oob_required)
  len += mtd->oobsize;

 err = ar934x_nfc_send_read(nfc, NAND_CMD_READ0, 0, page, len);
 if (err)
  return err;

 memcpy(buf, nfc->buf, mtd->writesize);

 if (oob_required)
  memcpy(chip->oob_poi, &nfc->buf[mtd->writesize], mtd->oobsize);

 return 0;
}
