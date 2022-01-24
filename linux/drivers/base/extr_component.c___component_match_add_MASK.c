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
struct device {int dummy; } ;
struct component_match {int num; int alloc; TYPE_1__* compare; } ;
struct TYPE_2__ {int (* compare ) (struct device*,void*) ;int (* compare_typed ) (struct device*,int,void*) ;void (* release ) (struct device*,void*) ;int /*<<< orphan*/ * component; void* data; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct component_match* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (struct component_match*) ; 
 int FUNC2 (struct device*,struct component_match*,size_t) ; 
 int /*<<< orphan*/  devm_component_match_release ; 
 int /*<<< orphan*/  FUNC3 (struct device*,struct component_match*) ; 
 struct component_match* FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct device *master,
	struct component_match **matchptr,
	void (*release)(struct device *, void *),
	int (*compare)(struct device *, void *),
	int (*compare_typed)(struct device *, int, void *),
	void *compare_data)
{
	struct component_match *match = *matchptr;

	if (FUNC1(match))
		return;

	if (!match) {
		match = FUNC4(devm_component_match_release,
				     sizeof(*match), GFP_KERNEL);
		if (!match) {
			*matchptr = FUNC0(-ENOMEM);
			return;
		}

		FUNC3(master, match);

		*matchptr = match;
	}

	if (match->num == match->alloc) {
		size_t new_size = match->alloc + 16;
		int ret;

		ret = FUNC2(master, match, new_size);
		if (ret) {
			*matchptr = FUNC0(ret);
			return;
		}
	}

	match->compare[match->num].compare = compare;
	match->compare[match->num].compare_typed = compare_typed;
	match->compare[match->num].release = release;
	match->compare[match->num].data = compare_data;
	match->compare[match->num].component = NULL;
	match->num++;
}