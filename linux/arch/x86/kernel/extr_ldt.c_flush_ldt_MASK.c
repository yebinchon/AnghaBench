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
struct mm_struct {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  loaded_mm; } ;

/* Variables and functions */
 TYPE_1__ cpu_tlbstate ; 
 int /*<<< orphan*/  FUNC0 (struct mm_struct*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 struct mm_struct* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(void *__mm)
{
	struct mm_struct *mm = __mm;

	if (FUNC2(cpu_tlbstate.loaded_mm) != mm)
		return;

	FUNC0(mm);

	FUNC1();
}