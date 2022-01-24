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
 scalar_t__ LED_BASE ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,char const) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (char const*) ; 

void FUNC4(const char *str)
{
	int i;
	int len = FUNC3(str);

	FUNC2();
	if (len > 8)
		len = 8;

	if (FUNC0(0xb0000800) & (0x1 << 18))
		for (i = 0; i < len; i++)
			FUNC1(LED_BASE + i, str[i]);
	else
		for (i = 0; i < len; i++)
			FUNC1(LED_BASE + (i & 4) + (3 - (i & 3)),
				     str[i]);
}