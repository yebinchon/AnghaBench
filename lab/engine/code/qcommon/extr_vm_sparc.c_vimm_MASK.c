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
 int /*<<< orphan*/  FUNC0 (char*,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

__attribute__((used)) static void FUNC2(unsigned int val, int bits, int shift, int sgned, int arg_index)
{
	unsigned int orig_val = val;
	int orig_bits = bits;

	if (sgned) {
		int x = (int) val;
		if (x < 0)
			x = -x;
		val = (unsigned int) x;
		bits--;
	}
	if (val & ~((1U << bits) - 1U)) {
		FUNC0("VM ERROR: immediate value 0x%08x out of %d bit range\n",
			   orig_val, orig_bits);
		FUNC1("sparc VM bug");
	}
}