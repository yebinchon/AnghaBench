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
struct reginit_item {int reg; int val; } ;
struct fs_dev {int dummy; } ;

/* Variables and functions */
 int PHY_CLEARALL ; 
 int PHY_EOF ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct fs_dev*,int,int) ; 

__attribute__((used)) static int FUNC3(struct fs_dev *dev, struct reginit_item *reginit)
{
	int i;

	FUNC0 ();
	while (reginit->reg != PHY_EOF) {
		if (reginit->reg == PHY_CLEARALL) {
			/* "PHY_CLEARALL means clear all registers. Numregisters is in "val". */
			for (i=0;i<reginit->val;i++) {
				FUNC2 (dev, i, 0);
			}
		} else {
			FUNC2 (dev, reginit->reg, reginit->val);
		}
		reginit++;
	}
	FUNC1 ();
	return 0;
}