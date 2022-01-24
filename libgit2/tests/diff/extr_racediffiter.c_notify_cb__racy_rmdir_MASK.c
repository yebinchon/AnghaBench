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
struct TYPE_2__ {int first_time; int /*<<< orphan*/  basic_payload; int /*<<< orphan*/  dir; } ;
typedef  TYPE_1__ racy_payload ;
typedef  int /*<<< orphan*/  git_diff_delta ;
typedef  int /*<<< orphan*/  git_diff ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(
	const git_diff *diff_so_far,
	const git_diff_delta *delta_to_add,
	const char *matched_pathspec,
	void *payload)
{
	racy_payload *pay = (racy_payload *)payload;

	if (pay->first_time) {
		FUNC0(FUNC2(pay->dir));
		pay->first_time = false;
	}

	return FUNC1(diff_so_far, delta_to_add, matched_pathspec, pay->basic_payload);
}