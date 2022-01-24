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
typedef  int /*<<< orphan*/  phandle ;
struct TYPE_2__ {int (* no_proplen ) (int /*<<< orphan*/ ,char const*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  prom_lock ; 
 TYPE_1__* prom_nodeops ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC3 (int /*<<< orphan*/ ,char const*) ; 

int FUNC4(phandle node, const char *prop)
{
	int ret;
	unsigned long flags;

	if((!node) || (!prop))
		return -1;
		
	FUNC1(&prom_lock, flags);
	ret = prom_nodeops->no_proplen(node, prop);
	FUNC0();
	FUNC2(&prom_lock, flags);
	return ret;
}