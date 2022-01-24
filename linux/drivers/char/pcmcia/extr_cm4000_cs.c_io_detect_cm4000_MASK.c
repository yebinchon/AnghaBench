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
struct cm4000_dev {int flags1; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  IS_ATR_VALID ; 
 int /*<<< orphan*/  IS_CMM_ABSENT ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(unsigned int iobase, struct cm4000_dev *dev)
{

	/* note: statemachine is assumed to be reset */
	if (FUNC3(FUNC0(iobase)) & 8) {
		FUNC2(IS_ATR_VALID, &dev->flags);
		FUNC4(IS_CMM_ABSENT, &dev->flags);
		return 0;	/* detect CMM = 1 -> failure */
	}
	/* xoutb(0x40, REG_FLAGS1(iobase)); detectCMM */
	FUNC5(dev->flags1 | 0x40, FUNC1(iobase));
	if ((FUNC3(FUNC0(iobase)) & 8) == 0) {
		FUNC2(IS_ATR_VALID, &dev->flags);
		FUNC4(IS_CMM_ABSENT, &dev->flags);
		return 0;	/* detect CMM=0 -> failure */
	}
	/* clear detectCMM again by restoring original flags1 */
	FUNC5(dev->flags1, FUNC1(iobase));
	return 1;
}