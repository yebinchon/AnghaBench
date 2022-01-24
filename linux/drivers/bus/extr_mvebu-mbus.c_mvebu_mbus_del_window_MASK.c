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
typedef  int /*<<< orphan*/  phys_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  mbus_state ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t) ; 

int FUNC2(phys_addr_t base, size_t size)
{
	int win;

	win = FUNC1(&mbus_state, base, size);
	if (win < 0)
		return win;

	FUNC0(&mbus_state, win);
	return 0;
}