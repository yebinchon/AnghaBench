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
struct vm_area_struct {int vm_flags; } ;
struct page {int dummy; } ;
typedef  int /*<<< orphan*/  pte_t ;

/* Variables and functions */
 int VM_SPARC_ADI ; 
 int /*<<< orphan*/  FUNC0 (struct vm_area_struct*) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

pte_t FUNC5(pte_t entry, struct vm_area_struct *vma,
			 struct page *page, int writeable)
{
	unsigned int shift = FUNC1(FUNC0(vma));
	pte_t pte;

	pte = FUNC2(entry, shift);

#ifdef CONFIG_SPARC64
	/* If this vma has ADI enabled on it, turn on TTE.mcd
	 */
	if (vma->vm_flags & VM_SPARC_ADI)
		return pte_mkmcd(pte);
	else
		return pte_mknotmcd(pte);
#else
	return pte;
#endif
}