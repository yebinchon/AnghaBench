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
struct range_set {unsigned int nr; TYPE_1__* ranges; } ;
struct TYPE_2__ {scalar_t__ start; scalar_t__ end; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  range_cmp ; 
 int /*<<< orphan*/  FUNC2 (struct range_set*) ; 

void FUNC3(struct range_set *rs)
{
	unsigned int i;
	unsigned int o = 0; /* output cursor */

	FUNC0(rs->ranges, rs->nr, range_cmp);

	for (i = 0; i < rs->nr; i++) {
		if (rs->ranges[i].start == rs->ranges[i].end)
			continue;
		if (o > 0 && rs->ranges[i].start <= rs->ranges[o-1].end) {
			if (rs->ranges[o-1].end < rs->ranges[i].end)
				rs->ranges[o-1].end = rs->ranges[i].end;
		} else {
			rs->ranges[o].start = rs->ranges[i].start;
			rs->ranges[o].end = rs->ranges[i].end;
			o++;
		}
	}
	FUNC1(o <= rs->nr);
	rs->nr = o;

	FUNC2(rs);
}