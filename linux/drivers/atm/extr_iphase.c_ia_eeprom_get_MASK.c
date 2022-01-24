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
typedef  int u_short ;
typedef  int u32 ;
typedef  int u16 ;
typedef  int /*<<< orphan*/  IADEV ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int IAREAD ; 
 int /*<<< orphan*/  NVDI ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  NVRAM_CLR_CE ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static u16 FUNC3 (IADEV *iadev, u32 addr)
{
	u_short	val;
        u32	t;
	int	i;
	/*
	 * Read the first bit that was clocked with the falling edge of the
	 * the last command data clock
	 */
	FUNC2(IAREAD + addr);
	/*
	 * Now read the rest of the bits, the next bit read is D14, then D13,
	 * and so on.
	 */
	val = 0;
	for (i=15; i>=0; i--) {
		FUNC1(t);
		val |= (t << i);
	}
	NVRAM_CLR_CE;
	FUNC0(~NVDI);
	return val;
}