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
typedef  void git_diff_delta ;
typedef  void git_diff ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*) ; 

__attribute__((used)) static int FUNC1(
	const git_diff *diff_so_far,
	const git_diff_delta *delta_to_add,
	const char *matched_pathspec,
	void *payload)
{
	FUNC0(diff_so_far);
	FUNC0(delta_to_add);
	FUNC0(matched_pathspec);
	FUNC0(payload);

	return -42;
}