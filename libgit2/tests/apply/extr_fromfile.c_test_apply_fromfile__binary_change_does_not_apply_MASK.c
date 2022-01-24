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
 int /*<<< orphan*/  FILE_BINARY_DELTA_MODIFIED ; 
 int /*<<< orphan*/  FILE_BINARY_DELTA_MODIFIED_LEN ; 
 int /*<<< orphan*/  FILE_BINARY_DELTA_ORIGINAL ; 
 int /*<<< orphan*/  FILE_BINARY_DELTA_ORIGINAL_LEN ; 
 int /*<<< orphan*/  PATCH_BINARY_DELTA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

void FUNC2(void)
{
	/* try to apply patch backwards, ensure it does not apply */
	FUNC1(FUNC0(
		FILE_BINARY_DELTA_MODIFIED, FILE_BINARY_DELTA_MODIFIED_LEN,
		FILE_BINARY_DELTA_ORIGINAL, FILE_BINARY_DELTA_ORIGINAL_LEN,
		PATCH_BINARY_DELTA, "binary.bin", 0100644));
}