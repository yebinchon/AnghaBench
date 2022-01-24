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
 unsigned char FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char) ; 
 scalar_t__ vrtc_virt_base ; 

unsigned char FUNC3(unsigned char reg)
{
	unsigned char retval;

	/* vRTC's registers range from 0x0 to 0xD */
	if (reg > 0xd || !vrtc_virt_base)
		return 0xff;

	FUNC1(reg);
	retval = FUNC0(vrtc_virt_base + (reg << 2));
	FUNC2(reg);
	return retval;
}