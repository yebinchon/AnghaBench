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
typedef  int u64 ;

/* Variables and functions */
 int BIT_SHUTDOWN_ON ; 
 int /*<<< orphan*/  EC_SHUTDOWN_IO_PORT_DATA ; 
 int /*<<< orphan*/  EC_SHUTDOWN_IO_PORT_HIGH ; 
 int /*<<< orphan*/  EC_SHUTDOWN_IO_PORT_LOW ; 
 int REG_SHUTDOWN_HIGH ; 
 int REG_SHUTDOWN_LOW ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(void)
{
	u8 val;
	u64 i;

	FUNC3(REG_SHUTDOWN_HIGH, EC_SHUTDOWN_IO_PORT_HIGH);
	FUNC3(REG_SHUTDOWN_LOW, EC_SHUTDOWN_IO_PORT_LOW);
	FUNC2();
	val = FUNC1(EC_SHUTDOWN_IO_PORT_DATA);
	FUNC3(val & (~BIT_SHUTDOWN_ON), EC_SHUTDOWN_IO_PORT_DATA);
	FUNC2();
	/* need enough wait here... how many microseconds needs? */
	for (i = 0; i < 0x10000; i++)
		FUNC0();
	FUNC3(val | BIT_SHUTDOWN_ON, EC_SHUTDOWN_IO_PORT_DATA);
	FUNC2();
}