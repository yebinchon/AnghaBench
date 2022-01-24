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
struct patch_id {int /*<<< orphan*/  ent; } ;
struct commit {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct patch_id*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct patch_id*,struct commit*,struct patch_ids*) ; 
 int /*<<< orphan*/  FUNC3 (struct commit*) ; 
 struct patch_id* FUNC4 (int,int) ; 

struct patch_id *FUNC5(struct commit *commit,
				     struct patch_ids *ids)
{
	struct patch_id *key;

	if (!FUNC3(commit))
		return NULL;

	key = FUNC4(1, sizeof(*key));
	if (FUNC2(key, commit, ids)) {
		FUNC0(key);
		return NULL;
	}

	FUNC1(&ids->patches, &key->ent);
	return key;
}