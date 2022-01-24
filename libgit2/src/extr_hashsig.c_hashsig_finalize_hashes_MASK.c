#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ size; } ;
struct TYPE_4__ {int opt; TYPE_2__ maxs; TYPE_2__ mins; } ;
typedef  TYPE_1__ git_hashsig ;

/* Variables and functions */
 int GIT_EBUFS ; 
 int /*<<< orphan*/  GIT_ERROR_INVALID ; 
 int GIT_HASHSIG_ALLOW_SMALL_FILES ; 
 scalar_t__ HASHSIG_HEAP_MIN_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 

__attribute__((used)) static int FUNC2(git_hashsig *sig)
{
	if (sig->mins.size < HASHSIG_HEAP_MIN_SIZE &&
		!(sig->opt & GIT_HASHSIG_ALLOW_SMALL_FILES)) {
		FUNC0(GIT_ERROR_INVALID,
			"file too small for similarity signature calculation");
		return GIT_EBUFS;
	}

	FUNC1(&sig->mins);
	FUNC1(&sig->maxs);

	return 0;
}