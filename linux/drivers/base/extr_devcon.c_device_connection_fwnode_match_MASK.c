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
struct device_connection {int /*<<< orphan*/  id; int /*<<< orphan*/  fwnode; } ;
typedef  void device ;
struct bus_type {int dummy; } ;

/* Variables and functions */
 void* FUNC0 (struct bus_type*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 struct bus_type** generic_match_buses ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void *FUNC5(struct device_connection *con)
{
	struct bus_type *bus;
	struct device *dev;

	for (bus = generic_match_buses[0]; bus; bus++) {
		dev = FUNC0(bus, con->fwnode);
		if (dev && !FUNC4(FUNC1(dev), con->id, FUNC3(con->id)))
			return dev;

		FUNC2(dev);
	}
	return NULL;
}