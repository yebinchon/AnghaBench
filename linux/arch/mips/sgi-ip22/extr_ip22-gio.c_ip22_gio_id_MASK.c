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
typedef  int u32 ;
typedef  int u16 ;

/* Variables and functions */
 scalar_t__ FUNC0 (unsigned long) ; 
 scalar_t__ FUNC1 (int,int*) ; 

__attribute__((used)) static int FUNC2(unsigned long addr, u32 *res)
{
	u8 tmp8;
	u8 tmp16;
	u32 tmp32;
	u8 *ptr8;
	u16 *ptr16;
	u32 *ptr32;

	ptr32 = (void *)FUNC0(addr);
	if (!FUNC1(tmp32, ptr32)) {
		/*
		 * We got no DBE, but this doesn't mean anything.
		 * If GIO is pipelined (which can't be disabled
		 * for GFX slot) we don't get a DBE, but we see
		 * the transfer size as data. So we do an 8bit
		 * and a 16bit access and check whether the common
		 * data matches
		 */
		ptr8 = (void *)FUNC0(addr + 3);
		if (FUNC1(tmp8, ptr8)) {
			/*
			 * 32bit access worked, but 8bit doesn't
			 * so we don't see phantom reads on
			 * a pipelined bus, but a real card which
			 * doesn't support 8 bit reads
			 */
			*res = tmp32;
			return 1;
		}
		ptr16 = (void *)FUNC0(addr + 2);
		FUNC1(tmp16, ptr16);
		if (tmp8 == (tmp16 & 0xff) &&
		    tmp8 == (tmp32 & 0xff) &&
		    tmp16 == (tmp32 & 0xffff)) {
			*res = tmp32;
			return 1;
		}
	}
	return 0; /* nothing here */
}