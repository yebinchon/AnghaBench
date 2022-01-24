#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct ewah_bitmap {int dummy; } ;
struct TYPE_4__ {int flags; int /*<<< orphan*/  oid; } ;
struct commit {TYPE_2__* parents; TYPE_1__ object; } ;
struct TYPE_6__ {int selected_nr; int /*<<< orphan*/  progress; scalar_t__ show_progress; } ;
struct TYPE_5__ {scalar_t__ next; } ;

/* Variables and functions */
 int NEEDS_BITMAP ; 
 int /*<<< orphan*/  FUNC0 (struct commit**,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  date_compare ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned int) ; 
 struct ewah_bitmap* FUNC2 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC3 (unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct commit*,struct ewah_bitmap*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 TYPE_3__ writer ; 

void FUNC7(struct commit **indexed_commits,
				  unsigned int indexed_commits_nr,
				  int max_bitmaps)
{
	unsigned int i = 0, j, next;

	FUNC0(indexed_commits, indexed_commits_nr, date_compare);

	if (writer.show_progress)
		writer.progress = FUNC5("Selecting bitmap commits", 0);

	if (indexed_commits_nr < 100) {
		for (i = 0; i < indexed_commits_nr; ++i)
			FUNC4(indexed_commits[i], NULL);
		return;
	}

	for (;;) {
		struct ewah_bitmap *reused_bitmap = NULL;
		struct commit *chosen = NULL;

		next = FUNC3(i);

		if (i + next >= indexed_commits_nr)
			break;

		if (max_bitmaps > 0 && writer.selected_nr >= max_bitmaps) {
			writer.selected_nr = max_bitmaps;
			break;
		}

		if (next == 0) {
			chosen = indexed_commits[i];
			reused_bitmap = FUNC2(&chosen->object.oid);
		} else {
			chosen = indexed_commits[i + next];

			for (j = 0; j <= next; ++j) {
				struct commit *cm = indexed_commits[i + j];

				reused_bitmap = FUNC2(&cm->object.oid);
				if (reused_bitmap || (cm->object.flags & NEEDS_BITMAP) != 0) {
					chosen = cm;
					break;
				}

				if (cm->parents && cm->parents->next)
					chosen = cm;
			}
		}

		FUNC4(chosen, reused_bitmap);

		i += next + 1;
		FUNC1(writer.progress, i);
	}

	FUNC6(&writer.progress);
}