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
struct gpio_keys_button_data {int last_state; scalar_t__ count; scalar_t__ threshold; TYPE_1__* b; } ;
struct TYPE_2__ {int type; } ;

/* Variables and functions */
 unsigned int EV_KEY ; 
 unsigned int EV_SW ; 
 int /*<<< orphan*/  FUNC0 (struct gpio_keys_button_data*,unsigned int,int) ; 
 int FUNC1 (struct gpio_keys_button_data*) ; 

__attribute__((used)) static void FUNC2(struct gpio_keys_button_data *bdata)
{
	int state = FUNC1(bdata);

	if (state != bdata->last_state) {
		unsigned int type = bdata->b->type ?: EV_KEY;

		if (bdata->count < bdata->threshold) {
			bdata->count++;
			return;
		}

		if ((bdata->last_state != -1) || (type == EV_SW))
			FUNC0(bdata, type, state);

		bdata->last_state = state;
	}

	bdata->count = 0;
}