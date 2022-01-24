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
typedef  int /*<<< orphan*/  u32 ;
struct gsw_mt753x {int /*<<< orphan*/  (* mii_write ) (struct gsw_mt753x*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* mii_read ) (struct gsw_mt753x*,int,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  BMCR_PDOWN ; 
 int /*<<< orphan*/  MII_BMCR ; 
 int MT753X_NUM_PHYS ; 
 int /*<<< orphan*/  FUNC0 (struct gsw_mt753x*) ; 
 int /*<<< orphan*/  FUNC1 (struct gsw_mt753x*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct gsw_mt753x*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct gsw_mt753x *gsw)
{
	int i;
	u32 val;

	FUNC0(gsw);

	for (i = 0; i < MT753X_NUM_PHYS; i++) {
		val = gsw->mii_read(gsw, i, MII_BMCR);
		val &= ~BMCR_PDOWN;
		gsw->mii_write(gsw, i, MII_BMCR, val);
	}

	return 0;
}