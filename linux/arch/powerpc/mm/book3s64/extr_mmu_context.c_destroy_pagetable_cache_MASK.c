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
struct TYPE_2__ {void* pmd_frag; void* pte_frag; } ;
struct mm_struct {TYPE_1__ context; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 

__attribute__((used)) static void FUNC2(struct mm_struct *mm)
{
	void *frag;

	frag = mm->context.pte_frag;
	if (frag)
		FUNC1(frag);

	frag = mm->context.pmd_frag;
	if (frag)
		FUNC0(frag);
	return;
}