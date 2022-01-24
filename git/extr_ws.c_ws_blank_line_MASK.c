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
 int /*<<< orphan*/  FUNC0 (char const) ; 

int FUNC1(const char *line, int len, unsigned ws_rule)
{
	/*
	 * We _might_ want to treat CR differently from other
	 * whitespace characters when ws_rule has WS_CR_AT_EOL, but
	 * for now we just use this stupid definition.
	 */
	while (len-- > 0) {
		if (!FUNC0(*line))
			return 0;
		line++;
	}
	return 1;
}