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
typedef  int u32 ;
typedef  int u16 ;

/* Variables and functions */
 size_t VECTOR_BREAKPOINT ; 
 size_t VMX_ALIGN ; 
 unsigned long VMX_ALIGN_MASK ; 
 int FUNC0 (int,unsigned char const*,size_t) ; 
 int FUNC1 (int,unsigned char const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 

__attribute__((used)) static u16 FUNC9(u16 crci, unsigned char const *p, size_t len)
{
	unsigned int prealign;
	unsigned int tail;
	u32 crc = crci;

	if (len < (VECTOR_BREAKPOINT + VMX_ALIGN) || !FUNC2())
		return FUNC1(crc, p, len);

	if ((unsigned long)p & VMX_ALIGN_MASK) {
		prealign = VMX_ALIGN - ((unsigned long)p & VMX_ALIGN_MASK);
		crc = FUNC1(crc, p, prealign);
		len -= prealign;
		p += prealign;
	}

	if (len & ~VMX_ALIGN_MASK) {
		crc <<= 16;
		FUNC7();
		FUNC5();
		FUNC4();
		crc = FUNC0(crc, p, len & ~VMX_ALIGN_MASK);
		FUNC3();
		FUNC6();
		FUNC8();
		crc >>= 16;
	}

	tail = len & VMX_ALIGN_MASK;
	if (tail) {
		p += len & ~VMX_ALIGN_MASK;
		crc = FUNC1(crc, p, tail);
	}

	return crc & 0xffff;
}