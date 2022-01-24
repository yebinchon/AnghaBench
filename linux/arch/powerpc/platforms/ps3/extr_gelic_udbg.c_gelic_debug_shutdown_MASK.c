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
typedef  int /*<<< orphan*/  dbg ;

/* Variables and functions */
 int /*<<< orphan*/  GELIC_BUS_ID ; 
 int /*<<< orphan*/  GELIC_DEVICE_ID ; 
 scalar_t__ bus_addr ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int) ; 

__attribute__((used)) static void FUNC2(void)
{
	if (bus_addr)
		FUNC1(GELIC_BUS_ID, GELIC_DEVICE_ID,
			      bus_addr, sizeof(dbg));
	FUNC0(GELIC_BUS_ID, GELIC_DEVICE_ID);
}