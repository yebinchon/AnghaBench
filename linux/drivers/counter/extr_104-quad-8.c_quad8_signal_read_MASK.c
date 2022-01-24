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
struct quad8_iio {scalar_t__ base; } ;
struct counter_signal_read_value {int dummy; } ;
struct counter_signal {int id; } ;
struct counter_device {struct quad8_iio* priv; } ;
typedef  enum counter_signal_level { ____Placeholder_counter_signal_level } counter_signal_level ;

/* Variables and functions */
 unsigned int FUNC0 (int) ; 
 int /*<<< orphan*/  COUNTER_SIGNAL_LEVEL ; 
 int COUNTER_SIGNAL_LEVEL_HIGH ; 
 int COUNTER_SIGNAL_LEVEL_LOW ; 
 int EINVAL ; 
 scalar_t__ QUAD8_REG_INDEX_INPUT_LEVELS ; 
 int /*<<< orphan*/  FUNC1 (struct counter_signal_read_value*,int /*<<< orphan*/ ,int*) ; 
 unsigned int FUNC2 (scalar_t__) ; 

__attribute__((used)) static int FUNC3(struct counter_device *counter,
	struct counter_signal *signal, struct counter_signal_read_value *val)
{
	const struct quad8_iio *const priv = counter->priv;
	unsigned int state;
	enum counter_signal_level level;

	/* Only Index signal levels can be read */
	if (signal->id < 16)
		return -EINVAL;

	state = FUNC2(priv->base + QUAD8_REG_INDEX_INPUT_LEVELS)
		& FUNC0(signal->id - 16);

	level = (state) ? COUNTER_SIGNAL_LEVEL_HIGH : COUNTER_SIGNAL_LEVEL_LOW;

	FUNC1(val, COUNTER_SIGNAL_LEVEL, &level);

	return 0;
}