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
struct clock_event_device {int dummy; } ;

/* Variables and functions */
 scalar_t__ A20R_PT_CLOCK_BASE ; 
 int SNI_COUNTER0_DIV ; 
 int SNI_COUNTER2_DIV ; 
 int /*<<< orphan*/  FUNC0 () ; 

__attribute__((used)) static int FUNC1(struct clock_event_device *evt)
{
	*(volatile u8 *)(A20R_PT_CLOCK_BASE + 12) = 0x34;
	FUNC0();
	*(volatile u8 *)(A20R_PT_CLOCK_BASE + 0) = SNI_COUNTER0_DIV;
	FUNC0();
	*(volatile u8 *)(A20R_PT_CLOCK_BASE + 0) = SNI_COUNTER0_DIV >> 8;
	FUNC0();

	*(volatile u8 *)(A20R_PT_CLOCK_BASE + 12) = 0xb4;
	FUNC0();
	*(volatile u8 *)(A20R_PT_CLOCK_BASE + 8) = SNI_COUNTER2_DIV;
	FUNC0();
	*(volatile u8 *)(A20R_PT_CLOCK_BASE + 8) = SNI_COUNTER2_DIV >> 8;
	FUNC0();
	return 0;
}