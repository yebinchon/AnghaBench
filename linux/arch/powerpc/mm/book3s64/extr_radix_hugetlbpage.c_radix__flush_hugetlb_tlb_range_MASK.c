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
struct vm_area_struct {int /*<<< orphan*/  vm_mm; int /*<<< orphan*/  vm_file; } ;
struct hstate {int dummy; } ;

/* Variables and functions */
 struct hstate* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct hstate*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned long,unsigned long,int) ; 

void FUNC3(struct vm_area_struct *vma, unsigned long start,
				   unsigned long end)
{
	int psize;
	struct hstate *hstate = FUNC0(vma->vm_file);

	psize = FUNC1(hstate);
	FUNC2(vma->vm_mm, start, end, psize);
}