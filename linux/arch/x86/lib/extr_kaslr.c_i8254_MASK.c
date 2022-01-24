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
typedef  int u16 ;

/* Variables and functions */
 int I8254_CMD_READBACK ; 
 int /*<<< orphan*/  I8254_PORT_CONTROL ; 
 int /*<<< orphan*/  I8254_PORT_COUNTER0 ; 
 int I8254_SELECT_COUNTER0 ; 
 int I8254_STATUS_NOTREADY ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline u16 FUNC2(void)
{
	u16 status, timer;

	do {
		FUNC1(I8254_CMD_READBACK | I8254_SELECT_COUNTER0,
		     I8254_PORT_CONTROL);
		status = FUNC0(I8254_PORT_COUNTER0);
		timer  = FUNC0(I8254_PORT_COUNTER0);
		timer |= FUNC0(I8254_PORT_COUNTER0) << 8;
	} while (status & I8254_STATUS_NOTREADY);

	return timer;
}