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
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 

__attribute__((used)) static void FUNC2(void)
{
	FUNC0();

	FUNC1(0xd1, 0x64);	/* Command write */
	FUNC0();

	FUNC1(0xdf, 0x60);	/* A20 on */
	FUNC0();

	FUNC1(0xff, 0x64);	/* Null command, but UHCI wants it */
	FUNC0();
}