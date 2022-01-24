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
struct parport_driver {char* name; int devmodel; int /*<<< orphan*/  probe; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct parport_driver*) ; 
 struct parport_driver* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct parport_driver*) ; 
 int /*<<< orphan*/  pi_probe ; 

void *FUNC3(char *name)
{
	struct parport_driver *parp_drv;
	int ret;

	parp_drv = FUNC1(sizeof(*parp_drv), GFP_KERNEL);
	if (!parp_drv)
		return NULL;

	parp_drv->name = name;
	parp_drv->probe = pi_probe;
	parp_drv->devmodel = true;

	ret = FUNC2(parp_drv);
	if (ret) {
		FUNC0(parp_drv);
		return NULL;
	}
	return (void *)parp_drv;
}