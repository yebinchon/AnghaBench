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
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*) ; 
 char* FUNC2 (char const*,int,int /*<<< orphan*/ *,char const*) ; 

char *FUNC3(const char *prefix, int len, const char *path)
{
	char *r = FUNC2(prefix, len, NULL, path);
	if (!r)
		FUNC1(FUNC0("'%s' is outside repository"), path);
	return r;
}