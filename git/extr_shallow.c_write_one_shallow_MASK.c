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
struct write_shallow_data {int flags; int /*<<< orphan*/  out; scalar_t__ use_pack_protocol; int /*<<< orphan*/  count; } ;
struct commit_graft {int nr_parent; int /*<<< orphan*/  oid; } ;
struct TYPE_2__ {int flags; int /*<<< orphan*/  oid; } ;
struct commit {TYPE_1__ object; } ;

/* Variables and functions */
 int QUICK ; 
 int SEEN ; 
 int SEEN_ONLY ; 
 int VERBOSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct commit* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 char* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  the_repository ; 

__attribute__((used)) static int FUNC7(const struct commit_graft *graft, void *cb_data)
{
	struct write_shallow_data *data = cb_data;
	const char *hex = FUNC2(&graft->oid);
	if (graft->nr_parent != -1)
		return 0;
	if (data->flags & QUICK) {
		if (!FUNC0(&graft->oid))
			return 0;
	} else if (data->flags & SEEN_ONLY) {
		struct commit *c = FUNC1(the_repository, &graft->oid);
		if (!c || !(c->object.flags & SEEN)) {
			if (data->flags & VERBOSE)
				FUNC4("Removing %s from .git/shallow\n",
				       FUNC2(&c->object.oid));
			return 0;
		}
	}
	data->count++;
	if (data->use_pack_protocol)
		FUNC3(data->out, "shallow %s", hex);
	else {
		FUNC6(data->out, hex);
		FUNC5(data->out, '\n');
	}
	return 0;
}