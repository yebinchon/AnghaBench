
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtd_info {int dummy; } ;
struct ar934x_nfc {int dummy; } ;


 int __ar934x_nfc_dev_ready (struct ar934x_nfc*) ;
 struct ar934x_nfc* mtd_to_ar934x_nfc (struct mtd_info*) ;

__attribute__((used)) static int
ar934x_nfc_dev_ready(struct mtd_info *mtd)
{
 struct ar934x_nfc *nfc = mtd_to_ar934x_nfc(mtd);

 return __ar934x_nfc_dev_ready(nfc);
}
