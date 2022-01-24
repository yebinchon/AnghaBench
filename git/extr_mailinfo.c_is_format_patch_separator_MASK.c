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
 int /*<<< orphan*/  FUNC0 (char const*,char const*,int) ; 
 int /*<<< orphan*/  FUNC1 (char const*,char*,char const**) ; 
 int FUNC2 (char const*) ; 
 int FUNC3 (char const*,char*) ; 

__attribute__((used)) static int FUNC4(const char *line, int len)
{
	static const char SAMPLE[] =
		"From e6807f3efca28b30decfecb1732a56c7db1137ee Mon Sep 17 00:00:00 2001\n";
	const char *cp;

	if (len != FUNC2(SAMPLE))
		return 0;
	if (!FUNC1(line, "From ", &cp))
		return 0;
	if (FUNC3(cp, "0123456789abcdef") != 40)
		return 0;
	cp += 40;
	return !FUNC0(SAMPLE + (cp - line), cp, FUNC2(SAMPLE) - (cp - line));
}