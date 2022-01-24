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
 int /*<<< orphan*/  FUNC0 (char*) ; 

void FUNC1(void)
{
	FUNC0("centerview");

	FUNC0("+moveup");
	FUNC0("-moveup");
	FUNC0("+movedown");
	FUNC0("-movedown");
	FUNC0("+left");
	FUNC0("-left");
	FUNC0("+right");
	FUNC0("-right");
	FUNC0("+forward");
	FUNC0("-forward");
	FUNC0("+back");
	FUNC0("-back");
	FUNC0("+lookup");
	FUNC0("-lookup");
	FUNC0("+lookdown");
	FUNC0("-lookdown");
	FUNC0("+strafe");
	FUNC0("-strafe");
	FUNC0("+moveleft");
	FUNC0("-moveleft");
	FUNC0("+moveright");
	FUNC0("-moveright");
	FUNC0("+speed");
	FUNC0("-speed");
	FUNC0("+attack");
	FUNC0("-attack");
	FUNC0("+button0");
	FUNC0("-button0");
	FUNC0("+button1");
	FUNC0("-button1");
	FUNC0("+button2");
	FUNC0("-button2");
	FUNC0("+button3");
	FUNC0("-button3");
	FUNC0("+button4");
	FUNC0("-button4");
	FUNC0("+button5");
	FUNC0("-button5");
	FUNC0("+button6");
	FUNC0("-button6");
	FUNC0("+button7");
	FUNC0("-button7");
	FUNC0("+button8");
	FUNC0("-button8");
	FUNC0("+button9");
	FUNC0("-button9");
	FUNC0("+button10");
	FUNC0("-button10");
	FUNC0("+button11");
	FUNC0("-button11");
	FUNC0("+button12");
	FUNC0("-button12");
	FUNC0("+button13");
	FUNC0("-button13");
	FUNC0("+button14");
	FUNC0("-button14");
	FUNC0("+mlook");
	FUNC0("-mlook");

#ifdef USE_VOIP
	Cmd_RemoveCommand("+voiprecord");
	Cmd_RemoveCommand("-voiprecord");
#endif
}