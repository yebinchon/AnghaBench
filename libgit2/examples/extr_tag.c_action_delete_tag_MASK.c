#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  repo; TYPE_2__* opts; } ;
typedef  TYPE_1__ tag_state ;
struct TYPE_8__ {char* tag_name; } ;
typedef  TYPE_2__ tag_options ;
typedef  int /*<<< orphan*/  git_object ;
struct TYPE_9__ {char* ptr; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_3__ git_buf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,char*) ; 

__attribute__((used)) static void FUNC8(tag_state *state)
{
	tag_options *opts = state->opts;
	git_object *obj;
	git_buf abbrev_oid = {0};

	FUNC0(!opts->tag_name, "Name required");

	FUNC1(FUNC5(&obj, state->repo, opts->tag_name),
			"Failed to lookup rev", opts->tag_name);

	FUNC1(FUNC4(&abbrev_oid, obj),
			"Unable to get abbreviated OID", opts->tag_name);

	FUNC1(FUNC6(state->repo, opts->tag_name),
			"Unable to delete tag", opts->tag_name);

	FUNC7("Deleted tag '%s' (was %s)\n", opts->tag_name, abbrev_oid.ptr);

	FUNC2(&abbrev_oid);
	FUNC3(obj);
}