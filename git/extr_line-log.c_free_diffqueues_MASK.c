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
struct diff_queue_struct {int nr; int /*<<< orphan*/ * queue; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct diff_queue_struct*) ; 

__attribute__((used)) static void FUNC2(int n, struct diff_queue_struct *dq)
{
	int i, j;
	for (i = 0; i < n; i++)
		for (j = 0; j < dq[i].nr; j++)
			FUNC0(dq[i].queue[j]);
	FUNC1(dq);
}