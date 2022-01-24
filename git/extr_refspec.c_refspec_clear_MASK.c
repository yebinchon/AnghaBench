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
struct refspec {int nr; int raw_nr; scalar_t__ fetch; scalar_t__ raw_alloc; scalar_t__* raw; scalar_t__ alloc; scalar_t__* items; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*) ; 

void FUNC3(struct refspec *rs)
{
	int i;

	for (i = 0; i < rs->nr; i++)
		FUNC2(&rs->items[i]);

	FUNC0(rs->items);
	rs->alloc = 0;
	rs->nr = 0;

	for (i = 0; i < rs->raw_nr; i++)
		FUNC1((char *)rs->raw[i]);
	FUNC0(rs->raw);
	rs->raw_alloc = 0;
	rs->raw_nr = 0;

	rs->fetch = 0;
}