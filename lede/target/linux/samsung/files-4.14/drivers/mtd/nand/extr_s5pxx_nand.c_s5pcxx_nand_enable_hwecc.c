
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct s5p_nand_host {scalar_t__ ecc_base; scalar_t__ nf_base; } ;
struct TYPE_2__ {int size; } ;
struct nand_chip {TYPE_1__ ecc; struct s5p_nand_host* priv; } ;
struct mtd_info {struct nand_chip* priv; } ;


 int NAND_ECC_WRITE ;
 scalar_t__ S5P_NFCONT ;
 int S5P_NFCONT_MECCLOCK ;
 scalar_t__ S5P_NFECCCONF ;
 scalar_t__ S5P_NFECCCONT ;
 int S5P_NFECCCONT_ECCDIRWR ;
 int S5P_NFECCCONT_MECCINIT ;
 scalar_t__ S5P_NFECCSTAT ;
 int rwl (scalar_t__,int,int) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void s5pcxx_nand_enable_hwecc(struct mtd_info *mtd, int mode)
{
 struct nand_chip *chip = mtd->priv;
 struct s5p_nand_host *host = chip->priv;

 uint32_t reg;


 reg = 3;
 reg |= (chip->ecc.size - 1) << 16;
 writel(reg, host->ecc_base + S5P_NFECCCONF);


 rwl(host->ecc_base + S5P_NFECCCONT, S5P_NFECCCONT_ECCDIRWR,
     (mode == NAND_ECC_WRITE) ? S5P_NFECCCONT_ECCDIRWR : 0);


 rwl(host->ecc_base + S5P_NFECCSTAT, 0, (1 << 24) | (1 << 25));


 rwl(host->nf_base + S5P_NFCONT, S5P_NFCONT_MECCLOCK, 0);


 rwl(host->ecc_base +S5P_NFECCCONT, 0, S5P_NFECCCONT_MECCINIT);
}
