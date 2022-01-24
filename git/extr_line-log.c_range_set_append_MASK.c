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
struct TYPE_2__ {long end; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct range_set*,long,long) ; 

void FUNC2(struct range_set *rs, long a, long b)
{
	FUNC0(rs->nr == 0 || rs->ranges[rs->nr-1].end <= a);
	FUNC1(rs, a, b);
}