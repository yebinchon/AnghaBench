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
 int /*<<< orphan*/  FUNC0 (char const*,char*,int) ; 
 char const* FUNC1 (char const*,int) ; 
 char const* FUNC2 (char*) ; 

__attribute__((used)) static const char *FUNC3(const char *buf)
{
	const char *cp;
	for (cp = buf; *cp && *cp != '\n'; cp++) {
		if (!FUNC0(cp, " <", 2))
			return FUNC1(buf, cp - buf);
	}
	return FUNC2("");
}