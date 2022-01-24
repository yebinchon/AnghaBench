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
struct object_id {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  flags; } ;
struct commit {TYPE_1__ object; } ;

/* Variables and functions */
 int /*<<< orphan*/  COMPLETE ; 
 int /*<<< orphan*/  FUNC0 (struct commit*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  complete ; 
 struct commit* FUNC1 (int /*<<< orphan*/ ,struct object_id const*,int) ; 
 int /*<<< orphan*/  the_repository ; 

__attribute__((used)) static int FUNC2(const char *path, const struct object_id *oid,
			 int flag, void *cb_data)
{
	struct commit *commit = FUNC1(the_repository,
							       oid, 1);

	if (commit) {
		commit->object.flags |= COMPLETE;
		FUNC0(commit, &complete);
	}
	return 0;
}