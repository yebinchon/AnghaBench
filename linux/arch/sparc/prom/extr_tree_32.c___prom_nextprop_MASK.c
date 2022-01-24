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
struct TYPE_2__ {char* (* no_nextprop ) (int /*<<< orphan*/ ,char*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  prom_lock ; 
 TYPE_1__* prom_nodeops ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 char* FUNC3 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static char *FUNC4(phandle node, char * oprop)
{
	unsigned long flags;
	char *prop;

	FUNC1(&prom_lock, flags);
	prop = prom_nodeops->no_nextprop(node, oprop);
	FUNC0();
	FUNC2(&prom_lock, flags);

	return prop;
}