#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_index_entry ;
struct TYPE_5__ {size_t length; int /*<<< orphan*/ * contents; } ;
struct TYPE_4__ {TYPE_3__ deleted; int /*<<< orphan*/  readers; } ;
typedef  TYPE_1__ git_index ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(git_index *index)
{
	int readers = (int)FUNC1(&index->readers);
	size_t i;

	if (readers > 0 || !index->deleted.length)
		return;

	for (i = 0; i < index->deleted.length; ++i) {
		git_index_entry *ie = FUNC0(index->deleted.contents[i], NULL);
		FUNC3(ie);
	}

	FUNC2(&index->deleted);
}