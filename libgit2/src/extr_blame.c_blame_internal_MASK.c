#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_blame_hunk ;
typedef  int /*<<< orphan*/  git_blame__origin ;
struct TYPE_15__ {scalar_t__ num_lines; scalar_t__ lno; scalar_t__ s_lno; struct TYPE_15__* next; int /*<<< orphan*/ * suspect; } ;
typedef  TYPE_2__ git_blame__entry ;
struct TYPE_14__ {scalar_t__ min_line; scalar_t__ max_line; int /*<<< orphan*/  flags; } ;
struct TYPE_16__ {int /*<<< orphan*/  hunks; TYPE_2__* ent; TYPE_1__ options; int /*<<< orphan*/  final_blob; int /*<<< orphan*/  final_buf_size; int /*<<< orphan*/  final_buf; int /*<<< orphan*/  path; int /*<<< orphan*/  final; } ;
typedef  TYPE_3__ git_blame ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 TYPE_2__* FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int FUNC3 (int /*<<< orphan*/ **,TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (TYPE_2__*,TYPE_3__*) ; 
 scalar_t__ FUNC9 (TYPE_3__*) ; 
 int FUNC10 (TYPE_3__*) ; 

__attribute__((used)) static int FUNC11(git_blame *blame)
{
	int error;
	git_blame__entry *ent = NULL;
	git_blame__origin *o;

	if ((error = FUNC10(blame)) < 0 ||
	    (error = FUNC3(&o, blame, blame->final, blame->path)) < 0)
		goto cleanup;
	blame->final_buf = FUNC5(blame->final_blob);
	blame->final_buf_size = FUNC6(blame->final_blob);

	ent = FUNC1(1, sizeof(git_blame__entry));
	FUNC0(ent);

	ent->num_lines = FUNC9(blame);
	ent->lno = blame->options.min_line - 1;
	ent->num_lines = ent->num_lines - blame->options.min_line + 1;
	if (blame->options.max_line > 0)
		ent->num_lines = blame->options.max_line - blame->options.min_line + 1;
	ent->s_lno = ent->lno;
	ent->suspect = o;

	blame->ent = ent;

	error = FUNC4(blame, blame->options.flags);

cleanup:
	for (ent = blame->ent; ent; ) {
		git_blame__entry *e = ent->next;
		git_blame_hunk *h = FUNC8(ent, blame);

		FUNC7(&blame->hunks, h);

		FUNC2(ent);
		ent = e;
	}

	return error;
}