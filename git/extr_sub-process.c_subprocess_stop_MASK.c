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
struct TYPE_2__ {int /*<<< orphan*/  pid; scalar_t__ clean_on_exit; } ;
struct subprocess_entry {int /*<<< orphan*/  ent; TYPE_1__ process; } ;
struct hashmap {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SIGTERM ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (struct hashmap*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC3(struct hashmap *hashmap, struct subprocess_entry *entry)
{
	if (!entry)
		return;

	entry->process.clean_on_exit = 0;
	FUNC2(entry->process.pid, SIGTERM);
	FUNC0(&entry->process);

	FUNC1(hashmap, &entry->ent, NULL);
}