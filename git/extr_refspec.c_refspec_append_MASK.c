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
struct refspec_item {int dummy; } ;
struct refspec {scalar_t__ raw_nr; struct refspec_item* raw; int /*<<< orphan*/  raw_alloc; scalar_t__ nr; struct refspec_item* items; int /*<<< orphan*/  alloc; int /*<<< orphan*/  fetch; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct refspec_item*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct refspec_item*,char const*,int /*<<< orphan*/ ) ; 
 struct refspec_item FUNC2 (char const*) ; 

void FUNC3(struct refspec *rs, const char *refspec)
{
	struct refspec_item item;

	FUNC1(&item, refspec, rs->fetch);

	FUNC0(rs->items, rs->nr + 1, rs->alloc);
	rs->items[rs->nr++] = item;

	FUNC0(rs->raw, rs->raw_nr + 1, rs->raw_alloc);
	rs->raw[rs->raw_nr++] = FUNC2(refspec);
}