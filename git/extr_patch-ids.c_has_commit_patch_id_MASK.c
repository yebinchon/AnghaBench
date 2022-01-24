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
struct patch_ids {int /*<<< orphan*/  patches; } ;
struct patch_id {int dummy; } ;
struct commit {int dummy; } ;
typedef  int /*<<< orphan*/  patch ;

/* Variables and functions */
 int /*<<< orphan*/  ent ; 
 struct patch_id* FUNC0 (int /*<<< orphan*/ *,struct patch_id*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct patch_id*,struct commit*,struct patch_ids*) ; 
 int /*<<< orphan*/  FUNC2 (struct patch_id*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct commit*) ; 

struct patch_id *FUNC4(struct commit *commit,
				     struct patch_ids *ids)
{
	struct patch_id patch;

	if (!FUNC3(commit))
		return NULL;

	FUNC2(&patch, 0, sizeof(patch));
	if (FUNC1(&patch, commit, ids))
		return NULL;

	return FUNC0(&ids->patches, &patch, ent, NULL);
}