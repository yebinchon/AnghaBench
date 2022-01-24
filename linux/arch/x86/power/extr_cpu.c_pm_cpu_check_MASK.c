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
struct x86_cpu_id {scalar_t__ driver_data; } ;
typedef  int (* pm_cpu_match_t ) (struct x86_cpu_id const*) ;

/* Variables and functions */
 int /*<<< orphan*/  msr_save_cpu_table ; 
 struct x86_cpu_id* FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(const struct x86_cpu_id *c)
{
	const struct x86_cpu_id *m;
	int ret = 0;

	m = FUNC0(msr_save_cpu_table);
	if (m) {
		pm_cpu_match_t fn;

		fn = (pm_cpu_match_t)m->driver_data;
		ret = fn(m);
	}

	return ret;
}