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
typedef  int uint64_t ;

/* Variables and functions */
 int /*<<< orphan*/  CVMX_MIO_BOOT_LOC_ADR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CVMX_MIO_BOOT_LOC_DAT ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  VECTOR_TABLE_SIZE ; 
 int* _cvmx_bootvector_data ; 
 int FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(void *mem)
{
	uint64_t kseg0_mem;
	int i;

	FUNC4(mem, 0, VECTOR_TABLE_SIZE);
	kseg0_mem = FUNC2(mem) | 0x8000000000000000ull;

	for (i = 0; i < 15; i++) {
		uint64_t v = _cvmx_bootvector_data[i];

		if (FUNC1() && (i == 0 || i == 7))
			v &= 0xffffffff00000000ull; /* KScratch not availble. */
		FUNC3(CVMX_MIO_BOOT_LOC_ADR, i * 8);
		FUNC3(CVMX_MIO_BOOT_LOC_DAT, v);
	}
	FUNC3(CVMX_MIO_BOOT_LOC_ADR, 15 * 8);
	FUNC3(CVMX_MIO_BOOT_LOC_DAT, kseg0_mem);
	FUNC3(FUNC0(0), 0x81fc0000);
}