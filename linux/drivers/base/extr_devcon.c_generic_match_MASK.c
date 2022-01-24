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
struct device_connection {int /*<<< orphan*/ * endpoint; scalar_t__ fwnode; } ;
typedef  void device ;
struct bus_type {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EPROBE_DEFER ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 (struct bus_type*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 void* FUNC2 (struct device_connection*) ; 
 struct bus_type** generic_match_buses ; 

__attribute__((used)) static void *FUNC3(struct device_connection *con, int ep, void *data)
{
	struct bus_type *bus;
	struct device *dev;

	if (con->fwnode)
		return FUNC2(con);

	for (bus = generic_match_buses[0]; bus; bus++) {
		dev = FUNC1(bus, NULL, con->endpoint[ep]);
		if (dev)
			return dev;
	}

	/*
	 * We only get called if a connection was found, tell the caller to
	 * wait for the other device to show up.
	 */
	return FUNC0(-EPROBE_DEFER);
}