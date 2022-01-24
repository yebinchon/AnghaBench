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
struct charlcd {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  pprt_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static void FUNC4(struct charlcd *charlcd, int cmd)
{
	FUNC1(&pprt_lock);
	FUNC0(0x1F);	/* R/W=W, RS=0 */
	FUNC0(cmd & 0x0F);
	FUNC0((cmd >> 4) & 0x0F);
	FUNC3(40);		/* the shortest command takes at least 40 us */
	FUNC2(&pprt_lock);
}