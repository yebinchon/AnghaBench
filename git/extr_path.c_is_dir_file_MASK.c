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
 scalar_t__ FUNC0 (char const) ; 
 int /*<<< orphan*/  FUNC1 (char const*,char const*) ; 
 int FUNC2 (char const*) ; 
 scalar_t__ FUNC3 (char const*,char const*,int) ; 

__attribute__((used)) static int FUNC4(const char *buf, const char *dir, const char *file)
{
	int len = FUNC2(dir);
	if (FUNC3(buf, dir, len) || !FUNC0(buf[len]))
		return 0;
	while (FUNC0(buf[len]))
		len++;
	return !FUNC1(buf + len, file);
}