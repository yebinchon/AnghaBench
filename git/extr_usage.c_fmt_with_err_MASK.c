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
typedef  int /*<<< orphan*/  str_error ;

/* Variables and functions */
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC0 (char*,int,char*,char const*,char*) ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static const char *FUNC2(char *buf, int n, const char *fmt)
{
	char str_error[256], *err;
	int i, j;

	err = FUNC1(errno);
	for (i = j = 0; err[i] && j < sizeof(str_error) - 1; ) {
		if ((str_error[j++] = err[i++]) != '%')
			continue;
		if (j < sizeof(str_error) - 1) {
			str_error[j++] = '%';
		} else {
			/* No room to double the '%', so we overwrite it with
			 * '\0' below */
			j--;
			break;
		}
	}
	str_error[j] = 0;
	/* Truncation is acceptable here */
	FUNC0(buf, n, "%s: %s", fmt, str_error);
	return buf;
}