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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned long,unsigned long,int /*<<< orphan*/ ) ; 
 struct hstate* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct hstate*) ; 

void FUNC3(struct vm_area_struct *vma, unsigned long vmaddr)
{
	struct hstate *hstate = FUNC1(vma->vm_file);
	unsigned long tsize = FUNC2(hstate) - 10;

	FUNC0(vma->vm_mm, vmaddr, tsize, 0);
}