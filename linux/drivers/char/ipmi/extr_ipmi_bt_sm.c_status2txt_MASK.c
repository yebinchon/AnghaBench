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
 unsigned char BT_B2H_ATN ; 
 unsigned char BT_B_BUSY ; 
 unsigned char BT_H2B_ATN ; 
 unsigned char BT_H_BUSY ; 
 unsigned char BT_OEM0 ; 
 unsigned char BT_SMS_ATN ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 

__attribute__((used)) static char *FUNC2(unsigned char status)
{
	/*
	 * This cannot be called by two threads at the same time and
	 * the buffer is always consumed immediately, so the static is
	 * safe to use.
	 */
	static char buf[40];

	FUNC1(buf, "[ ");
	if (status & BT_B_BUSY)
		FUNC0(buf, "B_BUSY ");
	if (status & BT_H_BUSY)
		FUNC0(buf, "H_BUSY ");
	if (status & BT_OEM0)
		FUNC0(buf, "OEM0 ");
	if (status & BT_SMS_ATN)
		FUNC0(buf, "SMS ");
	if (status & BT_B2H_ATN)
		FUNC0(buf, "B2H ");
	if (status & BT_H2B_ATN)
		FUNC0(buf, "H2B ");
	FUNC0(buf, "]");
	return buf;
}