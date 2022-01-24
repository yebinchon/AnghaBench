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
struct userdiff_driver {int dummy; } ;
struct index_state {int dummy; } ;
struct attr_check {TYPE_1__* items; } ;
struct TYPE_2__ {int /*<<< orphan*/  value; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 struct attr_check* FUNC3 (char*,int /*<<< orphan*/ *) ; 
 struct userdiff_driver driver_false ; 
 struct userdiff_driver driver_true ; 
 int /*<<< orphan*/  FUNC4 (struct index_state*,char const*,struct attr_check*) ; 
 struct userdiff_driver* FUNC5 (int /*<<< orphan*/ ) ; 

struct userdiff_driver *FUNC6(struct index_state *istate,
					      const char *path)
{
	static struct attr_check *check;

	if (!check)
		check = FUNC3("diff", NULL);
	if (!path)
		return NULL;
	FUNC4(istate, path, check);

	if (FUNC1(check->items[0].value))
		return &driver_true;
	if (FUNC0(check->items[0].value))
		return &driver_false;
	if (FUNC2(check->items[0].value))
		return NULL;
	return FUNC5(check->items[0].value);
}