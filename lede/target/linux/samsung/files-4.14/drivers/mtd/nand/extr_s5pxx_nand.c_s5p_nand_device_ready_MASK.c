#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct s5p_nand_host {scalar_t__ nf_base; } ;
struct nand_chip {struct s5p_nand_host* priv; } ;
struct mtd_info {struct nand_chip* priv; } ;

/* Variables and functions */
 scalar_t__ S5P_NFSTAT ; 
 int S5P_NFSTAT_READY ; 
 int FUNC0 (scalar_t__) ; 

__attribute__((used)) static int FUNC1(struct mtd_info *mtd)
{
	struct nand_chip *nand_chip = mtd->priv;
	struct s5p_nand_host *host = nand_chip->priv;

	/* it's to check the RnB nand signal bit and
	 * return to device ready condition in nand_base.c
	 */
	return FUNC0(host->nf_base + S5P_NFSTAT) & S5P_NFSTAT_READY;
}