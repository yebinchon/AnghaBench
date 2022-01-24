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
 int /*<<< orphan*/  FUNC1 (char*) ; 

void FUNC2(void)
{
	FUNC0("0007NAK");
	FUNC1("0007NaK");
	FUNC1("0007nak");
	FUNC0("0007NAKfoobar");
	FUNC1("0007nakfoobar");
	FUNC1("0007 NAK");
}