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
struct property {int length; int /*<<< orphan*/  value; int /*<<< orphan*/  name; } ;
struct cc_workarea {int /*<<< orphan*/  prop_offset; int /*<<< orphan*/  prop_length; int /*<<< orphan*/  name_offset; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct property*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 struct property* FUNC4 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct property *FUNC5(struct cc_workarea *ccwa)
{
	struct property *prop;
	char *name;
	char *value;

	prop = FUNC4(sizeof(*prop), GFP_KERNEL);
	if (!prop)
		return NULL;

	name = (char *)ccwa + FUNC0(ccwa->name_offset);
	prop->name = FUNC3(name, GFP_KERNEL);
	if (!prop->name) {
		FUNC1(prop);
		return NULL;
	}

	prop->length = FUNC0(ccwa->prop_length);
	value = (char *)ccwa + FUNC0(ccwa->prop_offset);
	prop->value = FUNC2(value, prop->length, GFP_KERNEL);
	if (!prop->value) {
		FUNC1(prop);
		return NULL;
	}

	return prop;
}