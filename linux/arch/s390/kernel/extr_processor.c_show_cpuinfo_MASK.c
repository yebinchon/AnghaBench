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
 int /*<<< orphan*/  machine_has_cpu_mhz ; 
 int /*<<< orphan*/  FUNC0 (struct seq_file*,char*,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (struct seq_file*,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (struct seq_file*,void*) ; 

__attribute__((used)) static int FUNC3(struct seq_file *m, void *v)
{
	unsigned long n = (unsigned long) v - 1;

	if (!n)
		FUNC2(m, v);
	if (!machine_has_cpu_mhz)
		return 0;
	FUNC0(m, "\ncpu number      : %ld\n", n);
	FUNC1(m, n);
	return 0;
}