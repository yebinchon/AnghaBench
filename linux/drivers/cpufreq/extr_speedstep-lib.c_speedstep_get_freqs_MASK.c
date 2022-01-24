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
typedef  int /*<<< orphan*/  ktime_t ;
typedef  enum speedstep_processor { ____Placeholder_speedstep_processor } speedstep_processor ;

/* Variables and functions */
 unsigned int EINVAL ; 
 unsigned int EIO ; 
 unsigned int ENODEV ; 
 unsigned int SPEEDSTEP_HIGH ; 
 unsigned int SPEEDSTEP_LOW ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int /*<<< orphan*/  FUNC6 (char*,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 unsigned int FUNC9 (int) ; 

unsigned int FUNC10(enum speedstep_processor processor,
				  unsigned int *low_speed,
				  unsigned int *high_speed,
				  unsigned int *transition_latency,
				  void (*set_state) (unsigned int state))
{
	unsigned int prev_speed;
	unsigned int ret = 0;
	unsigned long flags;
	ktime_t tv1, tv2;

	if ((!processor) || (!low_speed) || (!high_speed) || (!set_state))
		return -EINVAL;

	FUNC5("trying to determine both speeds\n");

	/* get current speed */
	prev_speed = FUNC9(processor);
	if (!prev_speed)
		return -EIO;

	FUNC5("previous speed is %u\n", prev_speed);

	FUNC7();
	FUNC4(flags);

	/* switch to low state */
	set_state(SPEEDSTEP_LOW);
	*low_speed = FUNC9(processor);
	if (!*low_speed) {
		ret = -EIO;
		goto out;
	}

	FUNC5("low speed is %u\n", *low_speed);

	/* start latency measurement */
	if (transition_latency)
		tv1 = FUNC0();

	/* switch to high state */
	set_state(SPEEDSTEP_HIGH);

	/* end latency measurement */
	if (transition_latency)
		tv2 = FUNC0();

	*high_speed = FUNC9(processor);
	if (!*high_speed) {
		ret = -EIO;
		goto out;
	}

	FUNC5("high speed is %u\n", *high_speed);

	if (*low_speed == *high_speed) {
		ret = -ENODEV;
		goto out;
	}

	/* switch to previous state, if necessary */
	if (*high_speed != prev_speed)
		set_state(SPEEDSTEP_LOW);

	if (transition_latency) {
		*transition_latency = FUNC2(FUNC1(tv2, tv1));
		FUNC5("transition latency is %u uSec\n", *transition_latency);

		/* convert uSec to nSec and add 20% for safety reasons */
		*transition_latency *= 1200;

		/* check if the latency measurement is too high or too low
		 * and set it to a safe value (500uSec) in that case
		 */
		if (*transition_latency > 10000000 ||
		    *transition_latency < 50000) {
			FUNC6("frequency transition measured seems out of range (%u nSec), falling back to a safe one of %u nSec\n",
				*transition_latency, 500000);
			*transition_latency = 500000;
		}
	}

out:
	FUNC3(flags);
	FUNC8();

	return ret;
}