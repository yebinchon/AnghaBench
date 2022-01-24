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
typedef  int /*<<< orphan*/  git_vector ;
struct TYPE_4__ {scalar_t__ theirs; scalar_t__ ours; scalar_t__ ancestor; } ;
typedef  TYPE_1__ checkout_conflictdata ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/  const*,size_t) ; 

int FUNC3(
	const git_vector *conflicts, size_t idx, void *payload)
{
	checkout_conflictdata *conflict;

	FUNC0(payload);

	if ((conflict = FUNC2(conflicts, idx)) == NULL)
		return -1;

	if (conflict->ancestor || conflict->ours || conflict->theirs)
		return 0;

	FUNC1(conflict);
	return 1;
}