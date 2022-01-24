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

void FUNC1(void)
{
	FUNC0("a", "a", 0);
	FUNC0("ab", "a", 0);
	FUNC0("ba", "a", 1);
	FUNC0("aa", "a", 0);
	FUNC0("aab", "aa", 0);
	FUNC0("baa", "aa", 1);
	FUNC0("dabc", "abc", 1);
	FUNC0("abababc", "abc", 4);
}