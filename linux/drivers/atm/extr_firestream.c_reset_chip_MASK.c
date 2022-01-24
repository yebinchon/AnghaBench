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
struct fs_dev {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FS50_NR_CHANNELS ; 
 int FS_NR_FREE_POOLS ; 
 scalar_t__ FUNC5 (struct fs_dev*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int SARMODE0 ; 
 int SARMODE0_SRTS0 ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (struct fs_dev*,int,int) ; 

__attribute__((used)) static void FUNC9 (struct fs_dev *dev)
{
	int i;

	FUNC8 (dev, SARMODE0, SARMODE0_SRTS0);

	/* Undocumented delay */
	FUNC7 (128);

	/* The "internal registers are documented to all reset to zero, but 
	   comments & code in the Windows driver indicates that the pools are
	   NOT reset. */
	for (i=0;i < FS_NR_FREE_POOLS;i++) {
		FUNC8 (dev, FUNC0 (FUNC6(i)), 0);
		FUNC8 (dev, FUNC4  (FUNC6(i)), 0);
		FUNC8 (dev, FUNC3  (FUNC6(i)), 0);
		FUNC8 (dev, FUNC1 (FUNC6(i)), 0);
		FUNC8 (dev, FUNC2 (FUNC6(i)), 0);
	}

	/* The same goes for the match channel registers, although those are
	   NOT documented that way in the Windows driver. -- REW */
	/* The Windows driver DOES write 0 to these registers somewhere in
	   the init sequence. However, a small hardware-feature, will
	   prevent reception of data on VPI/VCI = 0/0 (Unless the channel
	   allocated happens to have no disabled channels that have a lower
	   number. -- REW */

	/* Clear the match channel registers. */
	if (FUNC5 (dev)) {
		for (i=0;i<FS50_NR_CHANNELS;i++) {
			FUNC8 (dev, 0x200 + i * 4, -1);
		}
	}
}