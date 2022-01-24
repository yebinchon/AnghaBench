#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  entry; } ;
struct device {TYPE_2__ power; TYPE_1__* bus; } ;
struct TYPE_3__ {char* name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

void FUNC3(struct device *deva, struct device *devb)
{
	FUNC2("Moving %s:%s after %s:%s\n",
		 deva->bus ? deva->bus->name : "No Bus", FUNC0(deva),
		 devb->bus ? devb->bus->name : "No Bus", FUNC0(devb));
	/* Delete deva from dpm_list and reinsert after devb. */
	FUNC1(&deva->power.entry, &devb->power.entry);
}