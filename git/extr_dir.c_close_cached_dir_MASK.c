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
struct cached_dir {TYPE_1__* untracked; scalar_t__ fdir; } ;
struct TYPE_2__ {int valid; int recurse; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 

__attribute__((used)) static void FUNC1(struct cached_dir *cdir)
{
	if (cdir->fdir)
		FUNC0(cdir->fdir);
	/*
	 * We have gone through this directory and found no untracked
	 * entries. Mark it valid.
	 */
	if (cdir->untracked) {
		cdir->untracked->valid = 1;
		cdir->untracked->recurse = 1;
	}
}