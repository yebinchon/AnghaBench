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
struct repository {int dummy; } ;
struct promisor_remote {int /*<<< orphan*/  name; struct promisor_remote* next; } ;
struct object_id {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,struct object_id*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct object_id*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 struct promisor_remote* promisors ; 
 int FUNC3 (struct repository*,struct object_id**,int,int) ; 

int FUNC4(struct repository *repo,
			       const struct object_id *oids,
			       int oid_nr)
{
	struct promisor_remote *r;
	struct object_id *remaining_oids = (struct object_id *)oids;
	int remaining_nr = oid_nr;
	int to_free = 0;
	int res = -1;

	FUNC2();

	for (r = promisors; r; r = r->next) {
		if (FUNC0(r->name, remaining_oids, remaining_nr) < 0) {
			if (remaining_nr == 1)
				continue;
			remaining_nr = FUNC3(repo, &remaining_oids,
							 remaining_nr, to_free);
			if (remaining_nr) {
				to_free = 1;
				continue;
			}
		}
		res = 0;
		break;
	}

	if (to_free)
		FUNC1(remaining_oids);

	return res;
}