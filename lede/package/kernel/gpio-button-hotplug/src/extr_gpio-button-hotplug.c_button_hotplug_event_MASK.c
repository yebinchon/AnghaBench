#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct bh_priv {unsigned long seen; } ;
struct gpio_keys_button_data {TYPE_1__* b; struct bh_priv bh; } ;
struct TYPE_4__ {int /*<<< orphan*/  name; } ;
struct TYPE_3__ {int /*<<< orphan*/  code; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,unsigned int,int /*<<< orphan*/ ,int) ; 
 unsigned int EV_KEY ; 
 unsigned int EV_SW ; 
 unsigned long HZ ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned int,unsigned long,int) ; 
 TYPE_2__* button_map ; 
 unsigned long jiffies ; 

__attribute__((used)) static void FUNC3(struct gpio_keys_button_data *data,
			   unsigned int type, int value)
{
	struct bh_priv *priv = &data->bh;
	unsigned long seen = jiffies;
	int btn;

	FUNC0("event type=%u, code=%u, value=%d\n", type, data->b->code, value);

	if ((type != EV_KEY) && (type != EV_SW))
		return;

	btn = FUNC1(data->b->code);
	if (btn < 0)
		return;

	FUNC2(button_map[btn].name, type,
			(seen - priv->seen) / HZ, value);
	priv->seen = seen;
}