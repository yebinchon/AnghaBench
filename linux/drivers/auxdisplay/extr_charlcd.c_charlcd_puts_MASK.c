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
struct charlcd {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct charlcd*,char const) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (char const*) ; 

__attribute__((used)) static void FUNC4(struct charlcd *lcd, const char *s)
{
	const char *tmp = s;
	int count = FUNC3(s);

	for (; count-- > 0; tmp++) {
		if (!FUNC1() && (((count + 1) & 0x1f) == 0))
			/*
			 * let's be a little nice with other processes
			 * that need some CPU
			 */
			FUNC2();

		FUNC0(lcd, *tmp);
	}
}