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
typedef  unsigned long u32 ;
struct module {int /*<<< orphan*/  name; } ;
typedef  int Elf_Addr ;

/* Variables and functions */
 long FUNC0 (unsigned int) ; 
 int ENOEXEC ; 
 unsigned long FUNC1 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,...) ; 

__attribute__((used)) static int FUNC3(struct module *me, u32 *location, u32 base,
			   Elf_Addr v, unsigned int bits)
{
	unsigned long mask = FUNC1(bits - 1, 0);
	unsigned long se_bits;
	long offset;

	if (v % 4) {
		FUNC2("module %s: dangerous R_MIPS_PC%u relocation\n",
		       me->name, bits);
		return -ENOEXEC;
	}

	/* retrieve & sign extend implicit addend if any */
	offset = base & mask;
	offset |= (offset & FUNC0(bits - 1)) ? ~mask : 0;

	offset += ((long)v - (long)location) >> 2;

	/* check the sign bit onwards are identical - ie. we didn't overflow */
	se_bits = (offset & FUNC0(bits - 1)) ? ~0ul : 0;
	if ((offset & ~mask) != (se_bits & ~mask)) {
		FUNC2("module %s: relocation overflow\n", me->name);
		return -ENOEXEC;
	}

	*location = (*location & ~mask) | (offset & mask);

	return 0;
}