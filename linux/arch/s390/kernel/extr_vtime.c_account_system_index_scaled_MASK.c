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
struct task_struct {int /*<<< orphan*/  stimescaled; } ;
typedef  enum cpu_usage_stat { ____Placeholder_cpu_usage_stat } cpu_usage_stat ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct task_struct*,scalar_t__,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct task_struct *p, u64 cputime,
					enum cpu_usage_stat index)
{
	p->stimescaled += FUNC1(FUNC2(cputime));
	FUNC0(p, FUNC1(cputime), index);
}