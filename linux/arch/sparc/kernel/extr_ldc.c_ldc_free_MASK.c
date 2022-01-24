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
struct ldc_channel {struct ldc_channel* mssbuf; int /*<<< orphan*/  list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ldc_channel*) ; 
 int /*<<< orphan*/  FUNC2 (struct ldc_channel*) ; 
 int /*<<< orphan*/  FUNC3 (struct ldc_channel*) ; 

void FUNC4(struct ldc_channel *lp)
{
	FUNC3(lp);
	FUNC0(&lp->list);
	FUNC1(lp->mssbuf);
	FUNC2(lp);

	FUNC1(lp);
}