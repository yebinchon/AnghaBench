
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct s5p_nand_host {scalar_t__ nf_base; } ;
struct nand_chip {struct s5p_nand_host* priv; } ;
struct mtd_info {int writesize; struct nand_chip* priv; } ;


 scalar_t__ S5P_NFCONF ;
 int S5P_NFCONF_MLC ;
 int S5P_NFCONF_PAGESIZE ;
 scalar_t__ nand_is_slc (struct nand_chip*) ;
 int readl (scalar_t__) ;

__attribute__((used)) static void s5p_nand_inithw_later(struct mtd_info *mtd)
{
 struct nand_chip *chip = mtd->priv;
 struct s5p_nand_host *host = chip->priv;
 u32 value;

 value = readl(host->nf_base + S5P_NFCONF);

 if (nand_is_slc(chip)) {
  value &= ~S5P_NFCONF_MLC;

  if (mtd->writesize == 512) {
   value |= S5P_NFCONF_PAGESIZE;

  } else {
   value &= ~S5P_NFCONF_PAGESIZE;
  }
 } else {
  value |= S5P_NFCONF_MLC;

  if (mtd->writesize == 4096)
   value &= ~S5P_NFCONF_PAGESIZE;
  else
   value |= S5P_NFCONF_PAGESIZE;
 }
}
