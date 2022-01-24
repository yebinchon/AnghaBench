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
struct property {int length; struct property* next; void* value; int /*<<< orphan*/  name; } ;
struct device_node {int /*<<< orphan*/  phandle; struct property* properties; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct property*) ; 
 int /*<<< orphan*/  FUNC1 (struct property*) ; 
 int /*<<< orphan*/  devtree_lock ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 void* FUNC3 (void*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  of_set_property_mutex ; 
 int FUNC6 (int /*<<< orphan*/ ,char const*,void*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char const*) ; 

int FUNC10(struct device_node *dp, const char *name, void *val, int len)
{
	struct property **prevp;
	unsigned long flags;
	void *new_val;
	int err;

	new_val = FUNC3(val, len, GFP_KERNEL);
	if (!new_val)
		return -ENOMEM;

	err = -ENODEV;

	FUNC4(&of_set_property_mutex);
	FUNC7(&devtree_lock, flags);
	prevp = &dp->properties;
	while (*prevp) {
		struct property *prop = *prevp;

		if (!FUNC9(prop->name, name)) {
			void *old_val = prop->value;
			int ret;

			ret = FUNC6(dp->phandle, name, val, len);

			err = -EINVAL;
			if (ret >= 0) {
				prop->value = new_val;
				prop->length = len;

				if (FUNC0(prop))
					FUNC2(old_val);

				FUNC1(prop);

				err = 0;
			}
			break;
		}
		prevp = &(*prevp)->next;
	}
	FUNC8(&devtree_lock, flags);
	FUNC5(&of_set_property_mutex);

	/* XXX Upate procfs if necessary... */

	return err;
}