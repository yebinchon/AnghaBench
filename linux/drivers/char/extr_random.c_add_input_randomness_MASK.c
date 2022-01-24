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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  input_pool ; 
 int /*<<< orphan*/  input_timer_state ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3(unsigned int type, unsigned int code,
				 unsigned int value)
{
	static unsigned char last_value;

	/* ignore autorepeat and the like */
	if (value == last_value)
		return;

	last_value = value;
	FUNC1(&input_timer_state,
			     (type << 4) ^ code ^ (code >> 4) ^ value);
	FUNC2(FUNC0(&input_pool));
}