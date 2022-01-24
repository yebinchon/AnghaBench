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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,char*) ; 
 char* FUNC2 (char*,char const*,char const*,char const*,char const*) ; 
 char* FUNC3 (char const*,int /*<<< orphan*/ ) ; 

void FUNC4(const char *file, const char *line, const char *func, const char *prefix, const char *format, va_list ap)
{
	char *a, *b;

	a = FUNC2("[libui] %s:%s:%s() %s", file, line, func, prefix);
	b = FUNC3(format, ap);
	FUNC1("%s%s", a, b);
	FUNC0();
}