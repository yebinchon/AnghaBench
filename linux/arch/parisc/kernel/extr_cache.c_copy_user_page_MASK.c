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
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (void*,void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 

void FUNC5(void *vto, void *vfrom, unsigned long vaddr,
	struct page *pg)
{
       /* Copy using kernel mapping.  No coherency is needed (all in
	  kunmap) for the `to' page.  However, the `from' page needs to
	  be flushed through a mapping equivalent to the user mapping
	  before it can be accessed through the kernel mapping. */
	FUNC3();
	FUNC2(FUNC0(vfrom), vaddr);
	FUNC1(vto, vfrom);
	FUNC4();
}