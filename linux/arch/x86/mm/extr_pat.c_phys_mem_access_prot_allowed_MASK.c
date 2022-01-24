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
struct file {int f_flags; } ;
typedef  int /*<<< orphan*/  pgprot_t ;
typedef  enum page_cache_mode { ____Placeholder_page_cache_mode } page_cache_mode ;

/* Variables and functions */
 int O_DSYNC ; 
 int _PAGE_CACHE_MASK ; 
 int _PAGE_CACHE_MODE_UC_MINUS ; 
 int _PAGE_CACHE_MODE_WB ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long,unsigned long) ; 

int FUNC4(struct file *file, unsigned long pfn,
				unsigned long size, pgprot_t *vma_prot)
{
	enum page_cache_mode pcm = _PAGE_CACHE_MODE_WB;

	if (!FUNC3(pfn, size))
		return 0;

	if (file->f_flags & O_DSYNC)
		pcm = _PAGE_CACHE_MODE_UC_MINUS;

	*vma_prot = FUNC0((FUNC2(*vma_prot) & ~_PAGE_CACHE_MASK) |
			     FUNC1(pcm));
	return 1;
}