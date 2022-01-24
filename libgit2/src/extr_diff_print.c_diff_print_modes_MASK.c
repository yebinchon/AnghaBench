#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  mode; } ;
struct TYPE_5__ {int /*<<< orphan*/  mode; } ;
struct TYPE_7__ {TYPE_2__ new_file; TYPE_1__ old_file; } ;
typedef  TYPE_3__ git_diff_delta ;
typedef  int /*<<< orphan*/  git_buf ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(
	git_buf *out, const git_diff_delta *delta)
{
	FUNC1(out, "old mode %o\n", delta->old_file.mode);
	FUNC1(out, "new mode %o\n", delta->new_file.mode);

	return FUNC0(out) ? -1 : 0;
}