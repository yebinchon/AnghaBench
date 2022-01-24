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
typedef  int /*<<< orphan*/  u64 ;
struct seq_file {int dummy; } ;
struct ioc_gq {scalar_t__ cfg_weight; } ;
struct blkg_policy_data {int /*<<< orphan*/  blkg; } ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 struct ioc_gq* FUNC1 (struct blkg_policy_data*) ; 
 int /*<<< orphan*/  FUNC2 (struct seq_file*,char*,char const*,scalar_t__) ; 

__attribute__((used)) static u64 FUNC3(struct seq_file *sf, struct blkg_policy_data *pd,
			     int off)
{
	const char *dname = FUNC0(pd->blkg);
	struct ioc_gq *iocg = FUNC1(pd);

	if (dname && iocg->cfg_weight)
		FUNC2(sf, "%s %u\n", dname, iocg->cfg_weight);
	return 0;
}