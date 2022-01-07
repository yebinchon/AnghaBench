
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct nand_chip {int oob_poi; } ;
struct mtd_info {int writesize; int oobsize; } ;
struct ar934x_nfc {int buf; } ;


 int NAND_CMD_PAGEPROG ;
 int ar934x_nfc_disable_hwecc (struct ar934x_nfc*) ;
 int ar934x_nfc_enable_hwecc (struct ar934x_nfc*) ;
 int ar934x_nfc_send_write (struct ar934x_nfc*,int ,int ,int,int ) ;
 int ar934x_nfc_write_oob (struct mtd_info*,struct nand_chip*,int) ;
 int is_all_ff (int ,int ) ;
 int memcpy (int ,int const*,int ) ;
 struct ar934x_nfc* mtd_to_ar934x_nfc (struct mtd_info*) ;
 int nfc_dbg (struct ar934x_nfc*,char*,int,int) ;

__attribute__((used)) static int
ar934x_nfc_write_page(struct mtd_info *mtd, struct nand_chip *chip,
        const u8 *buf, int oob_required, int page)
{
 struct ar934x_nfc *nfc = mtd_to_ar934x_nfc(mtd);
 int err;

 nfc_dbg(nfc, "write_page: page:%d oob:%d\n", page, oob_required);


 if (oob_required &&
     !is_all_ff(chip->oob_poi, mtd->oobsize)) {
  err = ar934x_nfc_write_oob(mtd, chip, page);
  if (err)
   return err;
 }


 memcpy(nfc->buf, buf, mtd->writesize);

 ar934x_nfc_enable_hwecc(nfc);
 err = ar934x_nfc_send_write(nfc, NAND_CMD_PAGEPROG, 0, page,
        mtd->writesize);
 ar934x_nfc_disable_hwecc(nfc);

 return err;
}
