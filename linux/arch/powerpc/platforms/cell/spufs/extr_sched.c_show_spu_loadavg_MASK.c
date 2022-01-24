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
struct seq_file {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  idr; } ;

/* Variables and functions */
 int FIXED_1 ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  current ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nr_spu_contexts ; 
 int /*<<< orphan*/  FUNC5 (struct seq_file*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int* spu_avenrun ; 
 TYPE_1__* FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct seq_file *s, void *private)
{
	int a, b, c;

	a = spu_avenrun[0] + (FIXED_1/200);
	b = spu_avenrun[1] + (FIXED_1/200);
	c = spu_avenrun[2] + (FIXED_1/200);

	/*
	 * Note that last_pid doesn't really make much sense for the
	 * SPU loadavg (it even seems very odd on the CPU side...),
	 * but we include it here to have a 100% compatible interface.
	 */
	FUNC5(s, "%d.%02d %d.%02d %d.%02d %ld/%d %d\n",
		FUNC1(a), FUNC0(a),
		FUNC1(b), FUNC0(b),
		FUNC1(c), FUNC0(c),
		FUNC3(),
		FUNC2(&nr_spu_contexts),
		FUNC4(&FUNC6(current)->idr) - 1);
	return 0;
}