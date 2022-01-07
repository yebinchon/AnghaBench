
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct s5p_nand_host {scalar_t__ nf_base; } ;


 scalar_t__ S5P_NFCONT ;
 int S5P_NFCONT_MODE ;
 int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void s5p_nand_inithw(struct s5p_nand_host *host)
{
 u32 value;


 value = readl(host->nf_base + S5P_NFCONT);
 writel(value | S5P_NFCONT_MODE, host->nf_base + S5P_NFCONT);
}
