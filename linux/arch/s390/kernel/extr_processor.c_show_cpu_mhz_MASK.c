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
struct cpu_info {int /*<<< orphan*/  cpu_mhz_static; int /*<<< orphan*/  cpu_mhz_dynamic; } ;

/* Variables and functions */
 int /*<<< orphan*/  cpu_info ; 
 struct cpu_info* FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (struct seq_file*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct seq_file *m, unsigned long n)
{
	struct cpu_info *c = FUNC0(&cpu_info, n);

	FUNC1(m, "cpu MHz dynamic : %d\n", c->cpu_mhz_dynamic);
	FUNC1(m, "cpu MHz static  : %d\n", c->cpu_mhz_static);
}