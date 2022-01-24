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
struct TYPE_5__ {int /*<<< orphan*/  path; } ;
struct TYPE_6__ {int /*<<< orphan*/  status; TYPE_1__ new_file; } ;
typedef  TYPE_2__ git_diff_delta ;
typedef  char git_diff ;
struct TYPE_7__ {int /*<<< orphan*/  t; scalar_t__ path; } ;
typedef  TYPE_3__ basic_payload ;

/* Variables and functions */
 int GIT_ENOTFOUND ; 
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(
	const git_diff *diff_so_far,
	const git_diff_delta *delta_to_add,
	const char *matched_pathspec,
	void *payload)
{
	basic_payload *exp = (basic_payload *)payload;
	basic_payload *e;

	FUNC0(diff_so_far);
	FUNC0(matched_pathspec);

	for (e = exp; e->path; e++) {
		if (FUNC3(e->path, delta_to_add->new_file.path) == 0) {
			FUNC2(e->t, delta_to_add->status);
			return 0;
		}
	}
	FUNC1(0);
	return GIT_ENOTFOUND;
}