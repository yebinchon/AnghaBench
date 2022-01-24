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

/* Variables and functions */
 int HZ ; 
 int /*<<< orphan*/  host_info ; 
 int loops_per_jiffy ; 
 int /*<<< orphan*/  FUNC0 (struct seq_file*,char*,...) ; 

__attribute__((used)) static int FUNC1(struct seq_file *m, void *v)
{
	int index = 0;

	FUNC0(m, "processor\t: %d\n", index);
	FUNC0(m, "vendor_id\t: User Mode Linux\n");
	FUNC0(m, "model name\t: UML\n");
	FUNC0(m, "mode\t\t: skas\n");
	FUNC0(m, "host\t\t: %s\n", host_info);
	FUNC0(m, "bogomips\t: %lu.%02lu\n\n",
		   loops_per_jiffy/(500000/HZ),
		   (loops_per_jiffy/(5000/HZ)) % 100);

	return 0;
}