#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  pbar; scalar_t__ indeterminate; } ;
typedef  TYPE_1__ uiProgressBar ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 

int FUNC1(uiProgressBar *p)
{
	if (p->indeterminate)
		return -1;
	return (int) (FUNC0(p->pbar) * 100);
}