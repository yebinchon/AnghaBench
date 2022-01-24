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
 int /*<<< orphan*/  FUNC0 (char const*,char const*) ; 
 char* FUNC1 (char const*,char) ; 

__attribute__((used)) static int FUNC2(const char *host, const char *pattern)
{
	if (pattern[0] == '*' && pattern[1] == '.') {
		pattern += 2;
		if (!(host = FUNC1(host, '.')))
			return 0;
		host++;
	}

	return *host && *pattern && !FUNC0(host, pattern);
}