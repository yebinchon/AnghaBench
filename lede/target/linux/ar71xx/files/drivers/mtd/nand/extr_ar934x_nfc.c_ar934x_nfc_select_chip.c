
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtd_info {int dummy; } ;
struct ar934x_nfc {int (* select_chip ) (int) ;} ;


 struct ar934x_nfc* mtd_to_ar934x_nfc (struct mtd_info*) ;
 int stub1 (int) ;

__attribute__((used)) static void
ar934x_nfc_select_chip(struct mtd_info *mtd, int chip_no)
{
 struct ar934x_nfc *nfc = mtd_to_ar934x_nfc(mtd);

 if (nfc->select_chip)
  nfc->select_chip(chip_no);
}
