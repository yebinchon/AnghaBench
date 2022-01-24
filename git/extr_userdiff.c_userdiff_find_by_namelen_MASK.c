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
struct userdiff_driver {int /*<<< orphan*/ * name; } ;

/* Variables and functions */
 int FUNC0 (struct userdiff_driver*) ; 
 struct userdiff_driver* builtin_drivers ; 
 struct userdiff_driver* drivers ; 
 int ndrivers ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char const*,int) ; 

__attribute__((used)) static struct userdiff_driver *FUNC2(const char *k, int len)
{
	int i;
	for (i = 0; i < ndrivers; i++) {
		struct userdiff_driver *drv = drivers + i;
		if (!FUNC1(drv->name, k, len) && !drv->name[len])
			return drv;
	}
	for (i = 0; i < FUNC0(builtin_drivers); i++) {
		struct userdiff_driver *drv = builtin_drivers + i;
		if (!FUNC1(drv->name, k, len) && !drv->name[len])
			return drv;
	}
	return NULL;
}