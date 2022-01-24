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
typedef  int /*<<< orphan*/  u8 ;
struct ts_nbus {struct gpio_descs* data; } ;
struct gpio_descs {int /*<<< orphan*/ * desc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct ts_nbus *ts_nbus, u8 *val)
{
	struct gpio_descs *gpios = ts_nbus->data;
	int ret, i;

	*val = 0;
	for (i = 0; i < 8; i++) {
		ret = FUNC1(gpios->desc[i]);
		if (ret < 0)
			return ret;
		if (ret)
			*val |= FUNC0(i);
	}

	return 0;
}