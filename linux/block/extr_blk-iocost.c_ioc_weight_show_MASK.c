#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct seq_file {int dummy; } ;
struct ioc_cgrp {int /*<<< orphan*/  dfl_weight; } ;
struct blkcg {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  private; } ;

/* Variables and functions */
 int /*<<< orphan*/  blkcg_policy_iocost ; 
 int /*<<< orphan*/  FUNC0 (struct seq_file*,struct blkcg*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 struct ioc_cgrp* FUNC1 (struct blkcg*) ; 
 struct blkcg* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ioc_weight_prfill ; 
 TYPE_1__* FUNC3 (struct seq_file*) ; 
 int /*<<< orphan*/  FUNC4 (struct seq_file*) ; 
 int /*<<< orphan*/  FUNC5 (struct seq_file*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct seq_file *sf, void *v)
{
	struct blkcg *blkcg = FUNC2(FUNC4(sf));
	struct ioc_cgrp *iocc = FUNC1(blkcg);

	FUNC5(sf, "default %u\n", iocc->dfl_weight);
	FUNC0(sf, blkcg, ioc_weight_prfill,
			  &blkcg_policy_iocost, FUNC3(sf)->private, false);
	return 0;
}