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
struct TYPE_2__ {int /*<<< orphan*/  private; } ;

/* Variables and functions */
 int /*<<< orphan*/  blkcg_policy_throtl ; 
 int /*<<< orphan*/  FUNC0 (struct seq_file*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (struct seq_file*) ; 
 int /*<<< orphan*/  FUNC3 (struct seq_file*) ; 
 int /*<<< orphan*/  tg_prfill_conf_u64 ; 

__attribute__((used)) static int FUNC4(struct seq_file *sf, void *v)
{
	FUNC0(sf, FUNC1(FUNC3(sf)), tg_prfill_conf_u64,
			  &blkcg_policy_throtl, FUNC2(sf)->private, false);
	return 0;
}