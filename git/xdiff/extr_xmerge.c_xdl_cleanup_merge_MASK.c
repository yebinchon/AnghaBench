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
struct TYPE_4__ {scalar_t__ mode; struct TYPE_4__* next; } ;
typedef  TYPE_1__ xdmerge_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC1(xdmerge_t *c)
{
	int count = 0;
	xdmerge_t *next_c;

	/* were there conflicts? */
	for (; c; c = next_c) {
		if (c->mode == 0)
			count++;
		next_c = c->next;
		FUNC0(c);
	}
	return count;
}