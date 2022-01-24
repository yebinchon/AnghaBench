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
typedef  int u8 ;
typedef  size_t u32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 size_t MSR_INVALID ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,unsigned long*) ; 
 int /*<<< orphan*/  FUNC3 (int,unsigned long*) ; 
 size_t FUNC4 (unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (unsigned int) ; 

__attribute__((used)) static void FUNC6(u32 *msrpm, unsigned msr,
				 int read, int write)
{
	u8 bit_read, bit_write;
	unsigned long tmp;
	u32 offset;

	/*
	 * If this warning triggers extend the direct_access_msrs list at the
	 * beginning of the file
	 */
	FUNC1(!FUNC5(msr));

	offset    = FUNC4(msr);
	bit_read  = 2 * (msr & 0x0f);
	bit_write = 2 * (msr & 0x0f) + 1;
	tmp       = msrpm[offset];

	FUNC0(offset == MSR_INVALID);

	read  ? FUNC2(bit_read,  &tmp) : FUNC3(bit_read,  &tmp);
	write ? FUNC2(bit_write, &tmp) : FUNC3(bit_write, &tmp);

	msrpm[offset] = tmp;
}