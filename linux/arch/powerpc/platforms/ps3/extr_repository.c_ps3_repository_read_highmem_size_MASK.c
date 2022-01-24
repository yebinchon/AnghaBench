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
typedef  int /*<<< orphan*/  u64 ;

/* Variables and functions */
 int /*<<< orphan*/  PS3_LPAR_ID_CURRENT ; 
 int /*<<< orphan*/  FUNC0 (char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int FUNC3(unsigned int region_index,
	u64 *highmem_size)
{
	return FUNC2(PS3_LPAR_ID_CURRENT,
		FUNC1("highmem", 0),
		FUNC0("region", region_index),
		FUNC0("size", 0),
		0,
		highmem_size, NULL);
}