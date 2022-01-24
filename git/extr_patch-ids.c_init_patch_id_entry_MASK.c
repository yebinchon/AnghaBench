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
struct patch_ids {int /*<<< orphan*/  diffopts; } ;
struct patch_id {int /*<<< orphan*/  ent; struct commit* commit; } ;
struct object_id {int dummy; } ;
struct commit {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct commit*,int /*<<< orphan*/ *,struct object_id*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct object_id*) ; 

__attribute__((used)) static int FUNC3(struct patch_id *patch,
			       struct commit *commit,
			       struct patch_ids *ids)
{
	struct object_id header_only_patch_id;

	patch->commit = commit;
	if (FUNC0(commit, &ids->diffopts, &header_only_patch_id, 1, 0))
		return -1;

	FUNC1(&patch->ent, FUNC2(&header_only_patch_id));
	return 0;
}