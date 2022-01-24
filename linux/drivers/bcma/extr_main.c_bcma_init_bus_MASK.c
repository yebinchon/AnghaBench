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
struct bcma_bus {scalar_t__ nr_cores; int /*<<< orphan*/  cores; scalar_t__ num; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  bcma_bus_next_num ; 
 int /*<<< orphan*/  bcma_buses_mutex ; 
 int /*<<< orphan*/  FUNC1 (struct bcma_bus*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct bcma_bus *bus)
{
	FUNC2(&bcma_buses_mutex);
	bus->num = bcma_bus_next_num++;
	FUNC3(&bcma_buses_mutex);

	FUNC0(&bus->cores);
	bus->nr_cores = 0;

	FUNC1(bus);
}