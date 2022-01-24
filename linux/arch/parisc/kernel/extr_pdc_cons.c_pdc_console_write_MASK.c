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
struct console {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  pdc_console_lock ; 
 scalar_t__ FUNC0 (char const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC3(struct console *co, const char *s, unsigned count)
{
	int i = 0;
	unsigned long flags;

	FUNC1(&pdc_console_lock, flags);
	do {
		i += FUNC0(s + i, count - i);
	} while (i < count);
	FUNC2(&pdc_console_lock, flags);
}