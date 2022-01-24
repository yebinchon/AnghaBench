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
struct pmf_function {int /*<<< orphan*/  name; struct pmf_device* dev; } ;
struct pmf_device {TYPE_1__* handlers; int /*<<< orphan*/  node; } ;
struct pmf_args {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* end ) (struct pmf_function*,void*) ;void* (* begin ) (struct pmf_function*,struct pmf_args*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct pmf_function*,TYPE_1__*,void*,struct pmf_args*) ; 
 void* FUNC2 (struct pmf_function*,struct pmf_args*) ; 
 int /*<<< orphan*/  FUNC3 (struct pmf_function*,void*) ; 

int FUNC4(struct pmf_function *func, struct pmf_args *args)
{
	struct pmf_device *dev = func->dev;
	void *instdata = NULL;
	int rc = 0;

	FUNC0(" ** pmf_call_one(%pOF/%s) **\n", dev->node, func->name);

	if (dev->handlers->begin)
		instdata = dev->handlers->begin(func, args);
	rc = FUNC1(func, dev->handlers, instdata, args);
	if (dev->handlers->end)
		dev->handlers->end(func, instdata);

	return rc;
}