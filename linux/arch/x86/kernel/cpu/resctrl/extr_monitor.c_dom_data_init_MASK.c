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
struct rmid_entry {int rmid; int /*<<< orphan*/  list; } ;
struct rdt_resource {int num_rmid; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct rmid_entry* FUNC1 (int /*<<< orphan*/ ) ; 
 struct rmid_entry* FUNC2 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  rmid_free_lru ; 
 struct rmid_entry* rmid_ptrs ; 

__attribute__((used)) static int FUNC5(struct rdt_resource *r)
{
	struct rmid_entry *entry = NULL;
	int i, nr_rmids;

	nr_rmids = r->num_rmid;
	rmid_ptrs = FUNC2(nr_rmids, sizeof(struct rmid_entry), GFP_KERNEL);
	if (!rmid_ptrs)
		return -ENOMEM;

	for (i = 0; i < nr_rmids; i++) {
		entry = &rmid_ptrs[i];
		FUNC0(&entry->list);

		entry->rmid = i;
		FUNC3(&entry->list, &rmid_free_lru);
	}

	/*
	 * RMID 0 is special and is always allocated. It's used for all
	 * tasks that are not monitored.
	 */
	entry = FUNC1(0);
	FUNC4(&entry->list);

	return 0;
}