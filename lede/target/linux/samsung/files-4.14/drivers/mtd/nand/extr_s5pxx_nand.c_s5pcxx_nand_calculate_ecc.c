
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct s5p_nand_host {scalar_t__ ecc_base; scalar_t__ nf_base; } ;
struct TYPE_2__ {int bytes; } ;
struct nand_chip {TYPE_1__ ecc; struct s5p_nand_host* priv; } ;
struct mtd_info {struct nand_chip* priv; } ;


 scalar_t__ S5P_NFCONT ;
 int S5P_NFCONT_MECCLOCK ;
 scalar_t__ S5P_NFECCPRGECC ;
 scalar_t__ S5P_NFECCSTAT ;
 int readecc (scalar_t__,int *,int ) ;
 int readl (scalar_t__) ;
 int rwl (scalar_t__,int ,int ) ;

__attribute__((used)) static int s5pcxx_nand_calculate_ecc(struct mtd_info *mtd, const uint8_t *dat, uint8_t *ecc_code)
{
 struct nand_chip *chip = mtd->priv;
 struct s5p_nand_host *host = chip->priv;


 rwl(host->nf_base + S5P_NFCONT, 0, S5P_NFCONT_MECCLOCK);

 if (ecc_code) {

  while (!(readl(host->ecc_base + S5P_NFECCSTAT) & (1 << 25)));
  readecc(host->ecc_base + S5P_NFECCPRGECC, ecc_code, chip->ecc.bytes);
 } else {

        while (!(readl(host->ecc_base + S5P_NFECCSTAT) & (1 << 24)));
 }

 return 0;
}
