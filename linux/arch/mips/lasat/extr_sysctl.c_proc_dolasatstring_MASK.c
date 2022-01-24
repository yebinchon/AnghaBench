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
struct ctl_table {int dummy; } ;
typedef  int /*<<< orphan*/  loff_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (struct ctl_table*,int,void*,size_t*,int /*<<< orphan*/ *) ; 

int FUNC2(struct ctl_table *table, int write,
		       void *buffer, size_t *lenp, loff_t *ppos)
{
	int r;

	r = FUNC1(table, write, buffer, lenp, ppos);
	if ((!write) || r)
		return r;

	FUNC0();

	return 0;
}