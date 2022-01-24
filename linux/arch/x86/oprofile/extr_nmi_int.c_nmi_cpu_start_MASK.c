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
struct op_msrs {int /*<<< orphan*/  controls; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* start ) (struct op_msrs const*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  cpu_msrs ; 
 TYPE_1__* model ; 
 int /*<<< orphan*/  FUNC1 (struct op_msrs const*) ; 
 struct op_msrs* FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(void *dummy)
{
	struct op_msrs const *msrs = FUNC2(&cpu_msrs);
	if (!msrs->controls)
		FUNC0(1);
	else
		model->start(msrs);
}