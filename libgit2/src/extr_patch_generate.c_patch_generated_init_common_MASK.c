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
struct TYPE_5__ {int /*<<< orphan*/  free_fn; } ;
struct TYPE_6__ {scalar_t__ diff; int /*<<< orphan*/  flags; TYPE_1__ base; } ;
typedef  TYPE_2__ git_patch_generated ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_PATCH_GENERATED_INITIALIZED ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  patch_generated_free ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 

__attribute__((used)) static void FUNC2(git_patch_generated *patch)
{
	patch->base.free_fn = patch_generated_free;

	FUNC1(patch);

	patch->flags |= GIT_PATCH_GENERATED_INITIALIZED;

	if (patch->diff)
		FUNC0(patch->diff);
}