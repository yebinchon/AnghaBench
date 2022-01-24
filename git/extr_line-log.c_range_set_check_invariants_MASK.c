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
struct range_set {int nr; TYPE_1__* ranges; } ;
struct TYPE_2__ {scalar_t__ start; scalar_t__ end; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 

__attribute__((used)) static void FUNC1(struct range_set *rs)
{
	unsigned int i;

	if (!rs)
		return;

	if (rs->nr)
		FUNC0(rs->ranges[0].start < rs->ranges[0].end);

	for (i = 1; i < rs->nr; i++) {
		FUNC0(rs->ranges[i-1].end < rs->ranges[i].start);
		FUNC0(rs->ranges[i].start < rs->ranges[i].end);
	}
}