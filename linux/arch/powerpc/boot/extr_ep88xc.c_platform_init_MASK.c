#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  fixups; } ;

/* Variables and functions */
 int /*<<< orphan*/  PLANETCORE_KEY_MB_RAM ; 
 int /*<<< orphan*/  _dtb_start ; 
 scalar_t__ _end ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int mem_size ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  platform_fixups ; 
 TYPE_1__ platform_ops ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int,int,int) ; 
 char* table ; 

void FUNC6(unsigned long r3, unsigned long r4, unsigned long r5,
                   unsigned long r6, unsigned long r7)
{
	table = (char *)r3;
	FUNC2(table);

	if (!FUNC1(table, PLANETCORE_KEY_MB_RAM, &mem_size))
		return;

	mem_size *= 1024 * 1024;
	FUNC5(_end, mem_size - (unsigned long)_end, 32, 64);

	FUNC0(_dtb_start);

	FUNC3(table);

	FUNC4();
	platform_ops.fixups = platform_fixups;
}