
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtd_info {int dummy; } ;


 int ADM5120_NAND_STATUS_READY ;
 int adm5120_nand_get_status () ;

__attribute__((used)) static int adm5120_nand_ready(struct mtd_info *mtd)
{
 return ((adm5120_nand_get_status() & ADM5120_NAND_STATUS_READY) != 0);
}
