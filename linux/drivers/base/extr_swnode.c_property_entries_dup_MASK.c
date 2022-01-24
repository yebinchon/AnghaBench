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
struct property_entry {scalar_t__ name; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct property_entry* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct property_entry* FUNC1 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct property_entry*) ; 
 int FUNC3 (struct property_entry*,struct property_entry const*) ; 
 int /*<<< orphan*/  FUNC4 (struct property_entry*) ; 

struct property_entry *
FUNC5(const struct property_entry *properties)
{
	struct property_entry *p;
	int i, n = 0;
	int ret;

	if (!properties)
		return NULL;

	while (properties[n].name)
		n++;

	p = FUNC1(n + 1, sizeof(*p), GFP_KERNEL);
	if (!p)
		return FUNC0(-ENOMEM);

	for (i = 0; i < n; i++) {
		ret = FUNC3(&p[i], &properties[i]);
		if (ret) {
			while (--i >= 0)
				FUNC4(&p[i]);
			FUNC2(p);
			return FUNC0(ret);
		}
	}

	return p;
}