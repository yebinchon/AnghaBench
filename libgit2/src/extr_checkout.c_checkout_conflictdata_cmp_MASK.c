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
struct TYPE_2__ {int /*<<< orphan*/  theirs; int /*<<< orphan*/  ours; int /*<<< orphan*/  ancestor; } ;
typedef  TYPE_1__ checkout_conflictdata ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(const void *a, const void *b)
{
	const checkout_conflictdata *ca = a;
	const checkout_conflictdata *cb = b;
	int diff;

	if ((diff = FUNC0(ca->ancestor, cb->ancestor)) == 0 &&
		(diff = FUNC0(ca->ours, cb->theirs)) == 0)
		diff = FUNC0(ca->theirs, cb->theirs);

	return diff;
}