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
 int /*<<< orphan*/  FUNC1 (unsigned long,int) ; 
 unsigned long FUNC2 (char*,char**,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(char *str)
{
	unsigned long val, endval;
	char *endp;
	bool clear;

	while (*str) {
		clear = false;
		if (*str == '!') {
			clear = true;
			str++;
		}
		val = FUNC2(str, &endp, 0);
		if (str == endp)
			break;
		str = endp;
		if (*str == '-') {
			str++;
			endval = FUNC2(str, &endp, 0);
			if (str == endp)
				break;
			str = endp;
			while (val <= endval) {
				FUNC1(val, clear);
				val++;
			}
		} else {
			FUNC1(val, clear);
		}
		if (*str != ',')
			break;
		str++;
	}
	FUNC0();
}