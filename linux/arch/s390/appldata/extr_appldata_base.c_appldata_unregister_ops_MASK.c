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
struct appldata_ops {int /*<<< orphan*/  ctl_table; int /*<<< orphan*/  sysctl_header; int /*<<< orphan*/  list; } ;

/* Variables and functions */
 int /*<<< orphan*/  appldata_ops_mutex ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

void FUNC5(struct appldata_ops *ops)
{
	FUNC2(&appldata_ops_mutex);
	FUNC1(&ops->list);
	FUNC3(&appldata_ops_mutex);
	FUNC4(ops->sysctl_header);
	FUNC0(ops->ctl_table);
}