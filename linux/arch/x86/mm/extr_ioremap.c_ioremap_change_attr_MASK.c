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
typedef  enum page_cache_mode { ____Placeholder_page_cache_mode } page_cache_mode ;

/* Variables and functions */
 unsigned long PAGE_SHIFT ; 
#define  _PAGE_CACHE_MODE_UC 131 
#define  _PAGE_CACHE_MODE_WB 130 
#define  _PAGE_CACHE_MODE_WC 129 
#define  _PAGE_CACHE_MODE_WT 128 
 int FUNC0 (unsigned long,unsigned long) ; 
 int FUNC1 (unsigned long,unsigned long) ; 
 int FUNC2 (unsigned long,unsigned long) ; 
 int FUNC3 (unsigned long,unsigned long) ; 

int FUNC4(unsigned long vaddr, unsigned long size,
			enum page_cache_mode pcm)
{
	unsigned long nrpages = size >> PAGE_SHIFT;
	int err;

	switch (pcm) {
	case _PAGE_CACHE_MODE_UC:
	default:
		err = FUNC0(vaddr, nrpages);
		break;
	case _PAGE_CACHE_MODE_WC:
		err = FUNC2(vaddr, nrpages);
		break;
	case _PAGE_CACHE_MODE_WT:
		err = FUNC3(vaddr, nrpages);
		break;
	case _PAGE_CACHE_MODE_WB:
		err = FUNC1(vaddr, nrpages);
		break;
	}

	return err;
}