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
 scalar_t__ FUNC0 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char const*,char const*) ; 

int FUNC2(const char *src, const char *dst)
{
	static const char utf8[] = "UTF-8";

	if (!src)
		src = utf8;
	if (!dst)
		dst = utf8;
	if (FUNC0(src, dst))
		return 1;
	return !FUNC1(src, dst);
}