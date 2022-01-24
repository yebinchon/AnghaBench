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
struct collect_diff_cbdata {TYPE_1__* diff; } ;
struct TYPE_2__ {int /*<<< orphan*/  target; int /*<<< orphan*/  parent; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,long,long) ; 

__attribute__((used)) static int FUNC1(long start_a, long count_a,
			   long start_b, long count_b,
			   void *data)
{
	struct collect_diff_cbdata *d = data;

	if (count_a >= 0)
		FUNC0(&d->diff->parent, start_a, start_a + count_a);
	if (count_b >= 0)
		FUNC0(&d->diff->target, start_b, start_b + count_b);

	return 0;
}