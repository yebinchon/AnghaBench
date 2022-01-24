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
typedef  int /*<<< orphan*/  u32 ;

/* Variables and functions */
 size_t VECTOR_BREAKPOINT ; 
 size_t VMX_ALIGN ; 
 unsigned long VMX_ALIGN_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned char const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned char const*,size_t) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 

__attribute__((used)) static u32 FUNC9(u32 crc, unsigned char const *p, size_t len)
{
	unsigned int prealign;
	unsigned int tail;

	if (len < (VECTOR_BREAKPOINT + VMX_ALIGN) || !FUNC2())
		return FUNC0(crc, p, len);

	if ((unsigned long)p & VMX_ALIGN_MASK) {
		prealign = VMX_ALIGN - ((unsigned long)p & VMX_ALIGN_MASK);
		crc = FUNC0(crc, p, prealign);
		len -= prealign;
		p += prealign;
	}

	if (len & ~VMX_ALIGN_MASK) {
		FUNC7();
		FUNC5();
		FUNC4();
		crc = FUNC1(crc, p, len & ~VMX_ALIGN_MASK);
		FUNC3();
		FUNC6();
		FUNC8();
	}

	tail = len & VMX_ALIGN_MASK;
	if (tail) {
		p += len & ~VMX_ALIGN_MASK;
		crc = FUNC0(crc, p, tail);
	}

	return crc;
}