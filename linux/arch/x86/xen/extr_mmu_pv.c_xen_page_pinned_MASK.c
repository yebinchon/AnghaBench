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
 int FUNC0 (struct page*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 struct page* FUNC2 (void*) ; 
 int /*<<< orphan*/  xen_struct_pages_ready ; 

__attribute__((used)) static bool FUNC3(void *ptr)
{
	if (FUNC1(&xen_struct_pages_ready)) {
		struct page *page = FUNC2(ptr);

		return FUNC0(page);
	}
	return true;
}