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
struct tm {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char) ; 
 size_t FUNC1 (unsigned long,char,char const*,char*,struct tm*) ; 
 unsigned long FUNC2 (char const*,char**,int) ; 

__attribute__((used)) static const char *FUNC3(const char *date, struct tm *tm, int *num)
{
	char *end;
	unsigned long number = FUNC2(date, &end, 10);

	switch (*end) {
	case ':':
	case '.':
	case '/':
	case '-':
		if (FUNC0(end[1])) {
			size_t match = FUNC1(number, *end, date, end, tm);
			if (match)
				return date + match;
		}
	}

	/* Accept zero-padding only for small numbers ("Dec 02", never "Dec 0002") */
	if (date[0] != '0' || end - date <= 2)
		*num = number;
	return end;
}