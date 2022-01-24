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

/* Variables and functions */
 int /*<<< orphan*/  H_GET_24X7_CATALOG_PAGE ; 
 int /*<<< orphan*/  FUNC0 (unsigned long,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 long FUNC2 (int /*<<< orphan*/ ,unsigned long,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (char*,unsigned long,unsigned long,unsigned long) ; 

__attribute__((used)) static long FUNC4(unsigned long phys_4096,
				     unsigned long version, unsigned long index)
{
	FUNC3("h_get_24x7_catalog_page(0x%lx, %lu, %lu)",
			phys_4096, version, index);

	FUNC1(!FUNC0(phys_4096, 4096));

	return FUNC2(H_GET_24X7_CATALOG_PAGE,
			phys_4096, version, index);
}