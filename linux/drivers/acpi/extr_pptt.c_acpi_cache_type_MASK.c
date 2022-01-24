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
typedef  int /*<<< orphan*/  u8 ;
typedef  enum cache_type { ____Placeholder_cache_type } cache_type ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_PPTT_CACHE_TYPE_DATA ; 
 int /*<<< orphan*/  ACPI_PPTT_CACHE_TYPE_INSTR ; 
 int /*<<< orphan*/  ACPI_PPTT_CACHE_TYPE_UNIFIED ; 
#define  CACHE_TYPE_DATA 130 
#define  CACHE_TYPE_INST 129 
#define  CACHE_TYPE_UNIFIED 128 
 int /*<<< orphan*/  FUNC0 (char*) ; 

__attribute__((used)) static u8 FUNC1(enum cache_type type)
{
	switch (type) {
	case CACHE_TYPE_DATA:
		FUNC0("Looking for data cache\n");
		return ACPI_PPTT_CACHE_TYPE_DATA;
	case CACHE_TYPE_INST:
		FUNC0("Looking for instruction cache\n");
		return ACPI_PPTT_CACHE_TYPE_INSTR;
	default:
	case CACHE_TYPE_UNIFIED:
		FUNC0("Looking for unified cache\n");
		/*
		 * It is important that ACPI_PPTT_CACHE_TYPE_UNIFIED
		 * contains the bit pattern that will match both
		 * ACPI unified bit patterns because we use it later
		 * to match both cases.
		 */
		return ACPI_PPTT_CACHE_TYPE_UNIFIED;
	}
}