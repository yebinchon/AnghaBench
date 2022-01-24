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
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(void)
{
	unsigned int val;

	/* open AXI fabric clock gate */
	FUNC2(0x03003003, FUNC0(0x64));
	FUNC2(0x00303030, FUNC0(0x68));

	/* open MCB master clock gate */
	val = FUNC1(FUNC0(0x1c));
	val &= ~(0xf0);
	FUNC2(val, FUNC0(0x1c));

	return ;
}