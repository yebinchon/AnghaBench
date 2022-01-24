#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  orig_path; } ;
typedef  TYPE_1__ git_blame_hunk ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__ const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  g_blame ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ ,int) ; 

void FUNC4(void)
{
	const git_blame_hunk *h = FUNC3(g_blame, 5);
	FUNC0(h);
	FUNC2(h->orig_path, "b");

	h = FUNC3(g_blame, 95);
	FUNC1(h, NULL);
}