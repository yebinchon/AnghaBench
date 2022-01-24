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
 int /*<<< orphan*/  FUNC0 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

void FUNC2(void)
{
	FUNC1("000foobar");
	FUNC1("0001o");
	FUNC1("0001\1");
	FUNC0("0005\1", "", 0);
	FUNC1("0009\1o");
	FUNC0("0009\1data", "data", 4);
	FUNC0("000a\1data", "data", 5);
}