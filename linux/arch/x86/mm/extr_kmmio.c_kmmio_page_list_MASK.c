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
struct list_head {int dummy; } ;
typedef  int /*<<< orphan*/  pte_t ;

/* Variables and functions */
 int /*<<< orphan*/  KMMIO_PAGE_HASH_BITS ; 
 size_t FUNC0 (unsigned long,int /*<<< orphan*/ ) ; 
 struct list_head* kmmio_page_table ; 
 int /*<<< orphan*/ * FUNC1 (unsigned long,unsigned int*) ; 
 unsigned long FUNC2 (unsigned int) ; 

__attribute__((used)) static struct list_head *FUNC3(unsigned long addr)
{
	unsigned int l;
	pte_t *pte = FUNC1(addr, &l);

	if (!pte)
		return NULL;
	addr &= FUNC2(l);

	return &kmmio_page_table[FUNC0(addr, KMMIO_PAGE_HASH_BITS)];
}