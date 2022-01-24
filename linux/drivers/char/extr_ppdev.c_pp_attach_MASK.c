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
struct parport {size_t number; int /*<<< orphan*/  dev; } ;
struct device {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  PP_MAJOR ; 
 struct device* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,size_t) ; 
 struct device** devices ; 
 int /*<<< orphan*/  ppdev_class ; 
 int /*<<< orphan*/  FUNC3 (char*,size_t) ; 

__attribute__((used)) static void FUNC4(struct parport *port)
{
	struct device *ret;

	if (devices[port->number])
		return;

	ret = FUNC2(ppdev_class, port->dev,
			    FUNC1(PP_MAJOR, port->number), NULL,
			    "parport%d", port->number);
	if (FUNC0(ret)) {
		FUNC3("Failed to create device parport%d\n",
		       port->number);
		return;
	}
	devices[port->number] = ret;
}