#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {unsigned int vmalloc_seq; } ;
struct mm_struct {TYPE_2__ context; } ;
typedef  int /*<<< orphan*/  pgd_t ;
struct TYPE_4__ {unsigned int vmalloc_seq; } ;
struct TYPE_6__ {TYPE_1__ context; } ;

/* Variables and functions */
 int /*<<< orphan*/  VMALLOC_END ; 
 int /*<<< orphan*/  VMALLOC_START ; 
 TYPE_3__ init_mm ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mm_struct*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

void FUNC4(struct mm_struct *mm)
{
	unsigned int seq;

	do {
		seq = init_mm.context.vmalloc_seq;
		FUNC0(FUNC2(mm, VMALLOC_START),
		       FUNC3(VMALLOC_START),
		       sizeof(pgd_t) * (FUNC1(VMALLOC_END) -
					FUNC1(VMALLOC_START)));
		mm->context.vmalloc_seq = seq;
	} while (seq != init_mm.context.vmalloc_seq);
}