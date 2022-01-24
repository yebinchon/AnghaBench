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
struct TYPE_4__ {int /*<<< orphan*/ * opts; int /*<<< orphan*/ * repo; } ;
typedef  TYPE_1__ tag_state ;
typedef  int /*<<< orphan*/  tag_options ;
typedef  int /*<<< orphan*/  (* tag_action ) (TYPE_1__*) ;
typedef  int /*<<< orphan*/  git_repository ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  (*) (TYPE_1__*),int /*<<< orphan*/ *,int,char**) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

int FUNC2(git_repository *repo, int argc, char **argv)
{
	tag_options opts;
	tag_action action;
	tag_state state;

	FUNC1(&opts);
	FUNC0(action, &opts, argc, argv);

	state.repo = repo;
	state.opts = &opts;
	action(&state);

	return 0;
}