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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (char const*,int,int /*<<< orphan*/ *,char const*) ; 
 int FUNC2 (char const*) ; 

int FUNC3(const char *prefix, const char *path)
{
	int len = prefix ? FUNC2(prefix) : 0;
	char *r = FUNC1(prefix, len, NULL, path);
	if (r) {
		FUNC0(r);
		return 1;
	}
	return 0;
}