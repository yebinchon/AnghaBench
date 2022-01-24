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
struct charlcd {int height; int hwidth; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char) ; 
 int /*<<< orphan*/  pprt_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static void FUNC4(struct charlcd *charlcd)
{
	int pos;

	FUNC1(&pprt_lock);
	for (pos = 0; pos < charlcd->height * charlcd->hwidth; pos++) {
		FUNC0(0x5F);	/* R/W=W, RS=1 */
		FUNC0(' ' & 0x0F);
		FUNC0((' ' >> 4) & 0x0F);
		/* the shortest data takes at least 40 us */
		FUNC3(40);
	}
	FUNC2(&pprt_lock);
}