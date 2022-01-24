#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct merge_msg_entry {scalar_t__ written; TYPE_1__* merge_head; } ;
struct TYPE_6__ {scalar_t__ length; } ;
typedef  TYPE_2__ git_vector ;
struct TYPE_5__ {int /*<<< orphan*/ * remote_url; int /*<<< orphan*/ * ref_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_REFS_HEADS_DIR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct merge_msg_entry* FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(
	const struct merge_msg_entry *entry,
	git_vector *entries)
{
	if (entry->written == 0 &&
		entry->merge_head->remote_url != NULL &&
		entry->merge_head->ref_name != NULL &&
		FUNC1(GIT_REFS_HEADS_DIR, entry->merge_head->ref_name, FUNC3(GIT_REFS_HEADS_DIR)) == 0)
	{
		struct merge_msg_entry *existing;

		/* Match only branches from the same remote */
		if (entries->length == 0)
			return 1;

		existing = FUNC2(entries, 0);

		return (FUNC0(existing->merge_head->remote_url,
			entry->merge_head->remote_url) == 0);
	}

	return 0;
}