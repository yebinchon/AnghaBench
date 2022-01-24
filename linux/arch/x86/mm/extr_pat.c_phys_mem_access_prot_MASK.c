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
struct file {int dummy; } ;
typedef  int /*<<< orphan*/  pgprot_t ;

/* Variables and functions */
 unsigned long PAGE_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,unsigned long) ; 

pgprot_t FUNC2(struct file *file, unsigned long pfn,
				unsigned long size, pgprot_t vma_prot)
{
	if (!FUNC1(pfn << PAGE_SHIFT, size))
		vma_prot = FUNC0(vma_prot);

	return vma_prot;
}