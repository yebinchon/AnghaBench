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
struct property {char* name; int length; int /*<<< orphan*/  value; struct property* next; } ;
struct pmf_device {TYPE_1__* node; } ;
struct TYPE_2__ {struct property* properties; } ;

/* Variables and functions */
 char const* PP_PREFIX ; 
 scalar_t__ FUNC0 (struct pmf_device*,void*,char const*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (char const*) ; 
 scalar_t__ FUNC2 (char*,char const*,int const) ; 

__attribute__((used)) static int FUNC3(struct pmf_device *dev, void *driverdata)
{
	struct property *pp;
#define PP_PREFIX "platform-do-"
	const int plen = FUNC1(PP_PREFIX);
	int count = 0;

	for (pp = dev->node->properties; pp != 0; pp = pp->next) {
		const char *name;
		if (FUNC2(pp->name, PP_PREFIX, plen) != 0)
			continue;
		name = pp->name + plen;
		if (FUNC1(name) && pp->length >= 12)
			count += FUNC0(dev, driverdata, name,
						       pp->value, pp->length);
	}
	return count;
}