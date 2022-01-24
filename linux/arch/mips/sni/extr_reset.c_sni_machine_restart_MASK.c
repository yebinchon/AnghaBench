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
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

void FUNC4(char *command)
{
	int i;

	/* This does a normal via the keyboard controller like a PC.
	   We can do that easier ...  */
	FUNC1();
	for (;;) {
		for (i = 0; i < 100; i++) {
			FUNC0();
			FUNC3(50);
			FUNC2(0xfe, 0x64);	 /* pulse reset low */
			FUNC3(50);
		}
	}
}