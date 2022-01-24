#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct vm_area_struct {int vm_flags; int /*<<< orphan*/  vm_mm; } ;
struct flusher_data {unsigned long addr1; unsigned long addr2; struct vm_area_struct* vma; } ;
struct TYPE_3__ {scalar_t__ n_aliases; } ;
struct TYPE_4__ {TYPE_1__ dcache; } ;

/* Variables and functions */
 scalar_t__ NO_CONTEXT ; 
 int VM_EXEC ; 
 TYPE_2__ boot_cpu_data ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static void FUNC4(void *args)
{
	struct flusher_data *data = args;
	struct vm_area_struct *vma;
	unsigned long start, end;

	vma = data->vma;
	start = data->addr1;
	end = data->addr2;

	if (FUNC0(FUNC3(), vma->vm_mm) == NO_CONTEXT)
		return;

	/*
	 * If cache is only 4k-per-way, there are never any 'aliases'.  Since
	 * the cache is physically tagged, the data can just be left in there.
	 */
	if (boot_cpu_data.dcache.n_aliases == 0)
		return;

	FUNC1();

	if (vma->vm_flags & VM_EXEC)
		FUNC2();
}