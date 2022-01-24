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
typedef  int /*<<< orphan*/  va_list ;
typedef  int /*<<< orphan*/  msg ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char const*,char*) ; 
 scalar_t__ FUNC1 (char) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char const*,int /*<<< orphan*/ ) ; 

void FUNC3(const char *prefix, const char *err, va_list params)
{
	char msg[4096];
	char *p;

	FUNC2(msg, sizeof(msg), err, params);
	for (p = msg; *p; p++) {
		if (FUNC1(*p) && *p != '\t' && *p != '\n')
			*p = '?';
	}
	FUNC0(stderr, "%s%s\n", prefix, msg);
}