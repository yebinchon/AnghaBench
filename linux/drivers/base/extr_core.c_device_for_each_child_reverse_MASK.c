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
struct klist_iter {int dummy; } ;
struct device {TYPE_1__* p; } ;
struct TYPE_2__ {int /*<<< orphan*/  klist_children; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct klist_iter*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct klist_iter*) ; 
 struct device* FUNC2 (struct klist_iter*) ; 

int FUNC3(struct device *parent, void *data,
				  int (*fn)(struct device *dev, void *data))
{
	struct klist_iter i;
	struct device *child;
	int error = 0;

	if (!parent->p)
		return 0;

	FUNC1(&parent->p->klist_children, &i);
	while ((child = FUNC2(&i)) && !error)
		error = fn(child, data);
	FUNC0(&i);
	return error;
}