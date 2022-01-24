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
struct wt_status {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_COLOR_NORMAL ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  stash_count_refs ; 
 int /*<<< orphan*/  FUNC2 (struct wt_status*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(struct wt_status *s)
{
	int stash_count = 0;

	FUNC1("refs/stash", stash_count_refs, &stash_count);
	if (stash_count > 0)
		FUNC2(s, GIT_COLOR_NORMAL,
				 FUNC0("Your stash currently has %d entry",
				    "Your stash currently has %d entries", stash_count),
				 stash_count);
}