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
typedef  size_t u8 ;
struct xive_q {int dummy; } ;
struct xive_cpu {struct xive_q* queue; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 
 int FUNC3 (int /*<<< orphan*/ ,struct xive_q*,size_t,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC4 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  xive_queue_shift ; 

__attribute__((used)) static int FUNC5(unsigned int cpu, struct xive_cpu *xc, u8 prio)
{
	struct xive_q *q = &xc->queue[prio];
	__be32 *qpage;

	qpage = FUNC4(cpu, xive_queue_shift);
	if (FUNC0(qpage))
		return FUNC1(qpage);

	return FUNC3(FUNC2(cpu),
					   q, prio, qpage, xive_queue_shift, false);
}