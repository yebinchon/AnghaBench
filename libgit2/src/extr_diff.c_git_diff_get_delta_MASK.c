#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_diff_delta ;
struct TYPE_4__ {int /*<<< orphan*/  deltas; } ;
typedef  TYPE_1__ git_diff ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__ const*) ; 
 int /*<<< orphan*/  const* FUNC1 (int /*<<< orphan*/ *,size_t) ; 

const git_diff_delta *FUNC2(const git_diff *diff, size_t idx)
{
	FUNC0(diff);
	return FUNC1(&diff->deltas, idx);
}