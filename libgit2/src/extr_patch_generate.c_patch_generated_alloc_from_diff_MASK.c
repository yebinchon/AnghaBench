#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  base; int /*<<< orphan*/  flags; } ;
typedef  TYPE_1__ git_patch_generated ;
typedef  int /*<<< orphan*/  git_diff ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  GIT_PATCH_GENERATED_ALLOCATED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int FUNC4 (TYPE_1__*,int /*<<< orphan*/ *,size_t) ; 

__attribute__((used)) static int FUNC5(
	git_patch_generated **out, git_diff *diff, size_t delta_index)
{
	int error;
	git_patch_generated *patch = FUNC2(1, sizeof(git_patch_generated));
	FUNC0(patch);

	if (!(error = FUNC4(patch, diff, delta_index))) {
		patch->flags |= GIT_PATCH_GENERATED_ALLOCATED;
		FUNC1(&patch->base);
	} else {
		FUNC3(patch);
		patch = NULL;
	}

	*out = patch;
	return error;
}