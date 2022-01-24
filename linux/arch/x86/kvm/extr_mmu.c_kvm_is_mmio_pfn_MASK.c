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
typedef  scalar_t__ kvm_pfn_t ;

/* Variables and functions */
 int /*<<< orphan*/  E820_TYPE_RAM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 

__attribute__((used)) static bool FUNC8(kvm_pfn_t pfn)
{
	if (FUNC7(pfn))
		return !FUNC2(pfn) && FUNC0(FUNC6(pfn)) &&
			/*
			 * Some reserved pages, such as those from NVDIMM
			 * DAX devices, are not for MMIO, and can be mapped
			 * with cached memory type for better performance.
			 * However, the above check misconceives those pages
			 * as MMIO, and results in KVM mapping them with UC
			 * memory type, which would hurt the performance.
			 * Therefore, we check the host memory type in addition
			 * and only treat UC/UC-/WC pages as MMIO.
			 */
			(!FUNC3() || FUNC4(pfn));

	return !FUNC1(FUNC5(pfn),
				     FUNC5(pfn + 1) - 1,
				     E820_TYPE_RAM);
}