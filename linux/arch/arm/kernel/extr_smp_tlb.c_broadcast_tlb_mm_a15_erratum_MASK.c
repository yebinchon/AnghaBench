#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct mm_struct {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ cpumask_t ;

/* Variables and functions */
 int /*<<< orphan*/  CPU_BITS_NONE ; 
 int /*<<< orphan*/  FUNC0 (int,struct mm_struct*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  ipi_flush_tlb_a15_erratum ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC5(struct mm_struct *mm)
{
	int this_cpu;
	cpumask_t mask = { CPU_BITS_NONE };

	if (!FUNC1())
		return;

	this_cpu = FUNC2();
	FUNC0(this_cpu, mm, &mask);
	FUNC4(&mask, ipi_flush_tlb_a15_erratum, NULL, 1);
	FUNC3();
}