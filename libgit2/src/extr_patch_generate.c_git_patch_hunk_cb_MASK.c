#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {scalar_t__ line_count; int /*<<< orphan*/  line_start; int /*<<< orphan*/  hunk; } ;
typedef  TYPE_2__ git_patch_hunk ;
struct TYPE_9__ {int /*<<< orphan*/  lines; int /*<<< orphan*/  header_size; int /*<<< orphan*/  hunks; } ;
struct TYPE_11__ {TYPE_1__ base; } ;
typedef  TYPE_3__ git_patch_generated ;
struct TYPE_12__ {scalar_t__ header_len; } ;
typedef  TYPE_4__ git_diff_hunk ;
typedef  int /*<<< orphan*/  git_diff_delta ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*) ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_4__ const*,int) ; 

__attribute__((used)) static int FUNC5(
	const git_diff_delta *delta,
	const git_diff_hunk *hunk_,
	void *payload)
{
	git_patch_generated  *patch = payload;
	git_patch_hunk *hunk;

	FUNC1(delta);

	hunk = FUNC2(patch->base.hunks);
	FUNC0(hunk);

	FUNC4(&hunk->hunk, hunk_, sizeof(hunk->hunk));

	patch->base.header_size += hunk_->header_len;

	hunk->line_start = FUNC3(patch->base.lines);
	hunk->line_count = 0;

	return 0;
}