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
struct page {int dummy; } ;

/* Variables and functions */
 unsigned long HPT_ALIGN_PAGES ; 
 scalar_t__ KVM_CMA_CHUNK_ORDER ; 
 scalar_t__ PAGE_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct page* FUNC1 (int /*<<< orphan*/ ,unsigned long,scalar_t__,int) ; 
 int /*<<< orphan*/  kvm_cma ; 
 scalar_t__ FUNC2 (unsigned long) ; 

struct page *FUNC3(unsigned long nr_pages)
{
	FUNC0(FUNC2(nr_pages) < KVM_CMA_CHUNK_ORDER - PAGE_SHIFT);

	return FUNC1(kvm_cma, nr_pages, FUNC2(HPT_ALIGN_PAGES),
			 false);
}