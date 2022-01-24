#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  nasid_t ;
typedef  int /*<<< orphan*/  cnodeid_t ;
struct TYPE_2__ {int /*<<< orphan*/  h_bigwin_used; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int HUB_NUM_BIG_WINDOW ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned int) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

void FUNC5(cnodeid_t cnode)
{
	nasid_t nasid = FUNC0(cnode);
	unsigned i;

	/* initialize big window piomaps for this hub */
	FUNC2(FUNC3(cnode)->h_bigwin_used, HUB_NUM_BIG_WINDOW);
	for (i = 0; i < HUB_NUM_BIG_WINDOW; i++)
		FUNC1(nasid, i);

	FUNC4(nasid);
}