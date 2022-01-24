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
typedef  int u32 ;
struct property {int length; void* value; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  OF_DYNAMIC ; 
 int /*<<< orphan*/  FUNC0 (struct property*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (void*,void*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct property*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct property *FUNC5(struct property *prop,
					     u32 prop_size)
{
	struct property *new_prop;

	new_prop = FUNC2(sizeof(*new_prop), GFP_KERNEL);
	if (!new_prop)
		return NULL;

	new_prop->name = FUNC1(prop->name, GFP_KERNEL);
	new_prop->value = FUNC2(prop_size, GFP_KERNEL);
	if (!new_prop->name || !new_prop->value) {
		FUNC0(new_prop);
		return NULL;
	}

	FUNC3(new_prop->value, prop->value, prop->length);
	new_prop->length = prop_size;

	FUNC4(new_prop, OF_DYNAMIC);
	return new_prop;
}