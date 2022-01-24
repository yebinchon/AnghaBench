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
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 

void FUNC1(void)
{
	FUNC0("abcd", "abcd");
	FUNC0("a2%", "a2%");
	FUNC0("a2%3", "a2%3");
	FUNC0("a2%%3", "a2%%3");
	FUNC0("a2%3z", "a2%3z");
	FUNC0("a,", "a%2c");
	FUNC0("a21", "a2%31");
	FUNC0("a2%1", "a2%%31");
	FUNC0("a bc ", "a%20bc%20");
	FUNC0("Vicent Mart" "\355", "Vicent%20Mart%ED");
}