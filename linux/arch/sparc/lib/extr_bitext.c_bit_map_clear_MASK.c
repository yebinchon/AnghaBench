#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct bit_map {int used; int first_free; int /*<<< orphan*/  lock; int /*<<< orphan*/  map; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int,int /*<<< orphan*/ ) ; 

void FUNC5(struct bit_map *t, int offset, int len)
{
	int i;

	if (t->used < len)
		FUNC0();		/* Much too late to do any good, but alas... */
	FUNC2(&t->lock);
	for (i = 0; i < len; i++) {
		if (FUNC4(offset + i, t->map) == 0)
			FUNC0();
		FUNC1(offset + i, t->map);
	}
	if (offset < t->first_free)
		t->first_free = offset;
	t->used -= len;
	FUNC3(&t->lock);
}