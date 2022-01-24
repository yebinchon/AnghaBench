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
struct s3c2410_nand_set {int* nr_map; } ;

/* Variables and functions */
 unsigned int BAST_CPLD_CTLR2_IDERST ; 
 unsigned int BAST_CPLD_CTRL2_WNAND ; 
 int /*<<< orphan*/  BAST_VA_CTRL2 ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,unsigned int,...) ; 

__attribute__((used)) static void FUNC3(struct s3c2410_nand_set *set, int slot)
{
	unsigned int tmp;

	slot = set->nr_map[slot] & 3;

	FUNC2("bast_nand: selecting slot %d (set %p,%p)\n",
		 slot, set, set->nr_map);

	tmp = FUNC0(BAST_VA_CTRL2);
	tmp &= BAST_CPLD_CTLR2_IDERST;
	tmp |= slot;
	tmp |= BAST_CPLD_CTRL2_WNAND;

	FUNC2("bast_nand: ctrl2 now %02x\n", tmp);

	FUNC1(tmp, BAST_VA_CTRL2);
}