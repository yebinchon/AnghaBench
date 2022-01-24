#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  repo; TYPE_1__* opts; } ;
typedef  TYPE_2__ tag_state ;
struct TYPE_10__ {size_t count; int /*<<< orphan*/ * strings; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_3__ git_strarray ;
struct TYPE_8__ {char* pattern; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(tag_state *state)
{
	const char *pattern = state->opts->pattern;
	git_strarray tag_names = {0};
	size_t i;

	FUNC0(FUNC3(&tag_names, pattern ? pattern : "*", state->repo),
			"Unable to get list of tags", NULL);

	for(i = 0; i < tag_names.count; i++) {
		FUNC1(tag_names.strings[i], state);
	}

	FUNC2(&tag_names);
}