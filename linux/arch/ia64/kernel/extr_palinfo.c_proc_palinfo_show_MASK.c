#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct seq_file {int /*<<< orphan*/  private; } ;
struct TYPE_4__ {scalar_t__ req_cpu; size_t func_id; } ;
typedef  TYPE_1__ pal_func_cpu_u_t ;
struct TYPE_5__ {int /*<<< orphan*/  (* proc_read ) (struct seq_file*) ;} ;

/* Variables and functions */
 scalar_t__ FUNC0 () ; 
 TYPE_3__* palinfo_entries ; 
 int /*<<< orphan*/  FUNC1 (struct seq_file*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct seq_file*) ; 

__attribute__((used)) static int FUNC4(struct seq_file *m, void *v)
{
	pal_func_cpu_u_t *f = (pal_func_cpu_u_t *)&m->private;

	/*
	 * in SMP mode, we may need to call another CPU to get correct
	 * information. PAL, by definition, is processor specific
	 */
	if (f->req_cpu == FUNC0())
		(*palinfo_entries[f->func_id].proc_read)(m);
	else
		FUNC1(m, f);

	FUNC2();
	return 0;
}