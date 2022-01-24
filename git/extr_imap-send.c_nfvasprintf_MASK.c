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
typedef  int /*<<< orphan*/  tmp ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (char*,int,char const*,int /*<<< orphan*/ ) ; 
 char* FUNC2 (char*,int) ; 

__attribute__((used)) static int FUNC3(char **strp, const char *fmt, va_list ap)
{
	int len;
	char tmp[8192];

	len = FUNC1(tmp, sizeof(tmp), fmt, ap);
	if (len < 0)
		FUNC0("Fatal: Out of memory");
	if (len >= sizeof(tmp))
		FUNC0("imap command overflow!");
	*strp = FUNC2(tmp, len);
	return len;
}