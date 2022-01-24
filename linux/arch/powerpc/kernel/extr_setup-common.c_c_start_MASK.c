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
struct seq_file {int dummy; } ;
typedef  scalar_t__ loff_t ;

/* Variables and functions */
 int /*<<< orphan*/  cpu_online_mask ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ nr_cpu_ids ; 

__attribute__((used)) static void *FUNC2(struct seq_file *m, loff_t *pos)
{
	if (*pos == 0)	/* just in case, cpu 0 is not the first */
		*pos = FUNC0(cpu_online_mask);
	else
		*pos = FUNC1(*pos - 1, cpu_online_mask);
	if ((*pos) < nr_cpu_ids)
		return (void *)(unsigned long)(*pos + 1);
	return NULL;
}