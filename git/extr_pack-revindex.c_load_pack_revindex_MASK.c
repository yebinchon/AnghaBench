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
struct packed_git {int /*<<< orphan*/  revindex; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct packed_git*) ; 
 scalar_t__ FUNC1 (struct packed_git*) ; 

int FUNC2(struct packed_git *p)
{
	if (!p->revindex) {
		if (FUNC1(p))
			return -1;
		FUNC0(p);
	}
	return 0;
}