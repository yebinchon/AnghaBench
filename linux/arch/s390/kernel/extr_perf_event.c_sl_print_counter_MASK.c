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
struct cpumf_ctr_info {int /*<<< orphan*/  auth_ctl; int /*<<< orphan*/  csvn; int /*<<< orphan*/  cfvn; } ;
typedef  int /*<<< orphan*/  ci ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cpumf_ctr_info*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (struct cpumf_ctr_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct seq_file*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct seq_file *m)
{
	struct cpumf_ctr_info ci;

	FUNC0(&ci, 0, sizeof(ci));
	if (FUNC1(&ci))
		return;

	FUNC2(m, "CPU-MF: Counter facility: version=%u.%u "
		   "authorization=%04x\n", ci.cfvn, ci.csvn, ci.auth_ctl);
}