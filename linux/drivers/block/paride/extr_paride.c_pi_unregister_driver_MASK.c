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
struct parport_driver {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct parport_driver*) ; 
 int /*<<< orphan*/  FUNC1 (struct parport_driver*) ; 

void FUNC2(void *_drv)
{
	struct parport_driver *drv = _drv;

	FUNC1(drv);
	FUNC0(drv);
}