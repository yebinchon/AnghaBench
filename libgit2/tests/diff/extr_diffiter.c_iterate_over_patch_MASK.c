#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_patch ;
struct TYPE_3__ {int hunks; int lines; int /*<<< orphan*/  files; } ;
typedef  TYPE_1__ diff_expects ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,size_t) ; 

__attribute__((used)) static void FUNC2(git_patch *patch, diff_expects *exp)
{
	size_t h, num_h = FUNC0(patch), num_l;

	exp->files++;
	exp->hunks += (int)num_h;

	/* let's iterate in reverse, just because we can! */
	for (h = 1, num_l = 0; h <= num_h; ++h)
		num_l += FUNC1(patch, num_h - h);

	exp->lines += (int)num_l;
}