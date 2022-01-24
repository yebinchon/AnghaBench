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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_2__ {int /*<<< orphan*/  h; int /*<<< orphan*/  l; } ;
struct msr_info {TYPE_1__ reg; int /*<<< orphan*/  msr_no; } ;
typedef  int /*<<< orphan*/  rv ;

/* Variables and functions */
 int /*<<< orphan*/  __rdmsr_on_cpu ; 
 int /*<<< orphan*/  FUNC0 (struct msr_info*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (unsigned int,int /*<<< orphan*/ ,struct msr_info*,int) ; 

int FUNC2(unsigned int cpu, u32 msr_no, u32 *l, u32 *h)
{
	int err;
	struct msr_info rv;

	FUNC0(&rv, 0, sizeof(rv));

	rv.msr_no = msr_no;
	err = FUNC1(cpu, __rdmsr_on_cpu, &rv, 1);
	*l = rv.reg.l;
	*h = rv.reg.h;

	return err;
}