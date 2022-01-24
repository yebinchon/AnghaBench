#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  tp_value; } ;
struct TYPE_5__ {scalar_t__ mm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,scalar_t__) ; 
 scalar_t__ cpu_has_userlocal ; 
 TYPE_1__* current ; 
 TYPE_2__* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 unsigned int FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(void)
{
	unsigned int cpu = FUNC4();

	/* Restore ASID */
	if (current->mm)
		FUNC5(FUNC1(cpu, current->mm));

	/* Restore DSP state */
	FUNC3(current);

	/* Restore UserLocal */
	if (cpu_has_userlocal)
		FUNC6(FUNC2()->tp_value);

	/* Restore watch registers */
	FUNC0(current);
}