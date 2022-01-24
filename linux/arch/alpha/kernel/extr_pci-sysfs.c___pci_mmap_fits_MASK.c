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
struct vm_area_struct {unsigned long vm_pgoff; } ;
struct pci_dev {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  comm; } ;

/* Variables and functions */
 int PAGE_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ,char*,unsigned long,unsigned long,int /*<<< orphan*/ ,int,unsigned long) ; 
 TYPE_1__* current ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*) ; 
 int FUNC2 (struct pci_dev*,int) ; 
 unsigned long FUNC3 (struct vm_area_struct*) ; 

__attribute__((used)) static int FUNC4(struct pci_dev *pdev, int num,
			   struct vm_area_struct *vma, int sparse)
{
	unsigned long nr, start, size;
	int shift = sparse ? 5 : 0;

	nr = FUNC3(vma);
	start = vma->vm_pgoff;
	size = ((FUNC2(pdev, num) - 1) >> (PAGE_SHIFT - shift)) + 1;

	if (start < size && size - start >= nr)
		return 1;
	FUNC0(1, "process \"%s\" tried to map%s 0x%08lx-0x%08lx on %s BAR %d "
		"(size 0x%08lx)\n",
		current->comm, sparse ? " sparse" : "", start, start + nr,
		FUNC1(pdev), num, size);
	return 0;
}