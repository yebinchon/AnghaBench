#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_14__ {int /*<<< orphan*/  commit; } ;
typedef  TYPE_2__ git_blame__origin ;
struct TYPE_15__ {int guilty; int is_boundary; TYPE_2__* suspect; struct TYPE_15__* next; } ;
typedef  TYPE_3__ git_blame__entry ;
struct TYPE_13__ {int /*<<< orphan*/  oldest_commit; } ;
struct TYPE_16__ {TYPE_1__ options; TYPE_3__* ent; } ;
typedef  TYPE_4__ git_blame ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int FUNC5 (TYPE_4__*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (TYPE_2__*,TYPE_2__*) ; 

int FUNC7(git_blame *blame, uint32_t opt)
{
	int error = 0;

	while (true) {
		git_blame__entry *ent;
		git_blame__origin *suspect = NULL;

		/* Find a suspect to break down */
		for (ent = blame->ent; !suspect && ent; ent = ent->next)
			if (!ent->guilty)
				suspect = ent->suspect;
		if (!suspect)
			break;

		/* We'll use this suspect later in the loop, so hold on to it for now. */
		FUNC4(suspect);

		if ((error = FUNC5(blame, suspect, opt)) < 0)
			break;

		/* Take responsibility for the remaining entries */
		for (ent = blame->ent; ent; ent = ent->next) {
			if (FUNC6(ent->suspect, suspect)) {
				ent->guilty = true;
				ent->is_boundary = !FUNC2(
						FUNC1(suspect->commit),
						&blame->options.oldest_commit);
			}
		}
		FUNC3(suspect);
	}

	if (!error)
		FUNC0(blame);

	return error;
}