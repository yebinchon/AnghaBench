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
struct opal_dev {size_t prev_d_len; int /*<<< orphan*/  prev_data; int /*<<< orphan*/  parsed; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 size_t OPAL_C_PIN_MSID ; 
 int OPAL_INVAL_PARAM ; 
 int /*<<< orphan*/  OPAL_PIN ; 
 int FUNC0 (struct opal_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char const*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * opaluid ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 size_t FUNC3 (int /*<<< orphan*/ *,int,char const**) ; 

__attribute__((used)) static int FUNC4(struct opal_dev *dev, void *data)
{
	const char *msid_pin;
	size_t strlen;
	int err;

	err = FUNC0(dev, opaluid[OPAL_C_PIN_MSID], OPAL_PIN);
	if (err)
		return err;

	strlen = FUNC3(&dev->parsed, 4, &msid_pin);
	if (!msid_pin) {
		FUNC2("Couldn't extract MSID_CPIN from response\n");
		return OPAL_INVAL_PARAM;
	}

	dev->prev_data = FUNC1(msid_pin, strlen, GFP_KERNEL);
	if (!dev->prev_data)
		return -ENOMEM;

	dev->prev_d_len = strlen;

	return 0;
}