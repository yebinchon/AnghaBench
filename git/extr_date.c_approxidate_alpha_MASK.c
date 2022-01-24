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
struct typelen {char* type; int length; } ;
struct tm {int tm_mon; int tm_wday; scalar_t__ tm_year; } ;
struct special {char* name; int /*<<< orphan*/  (* fn ) (struct tm*,struct tm*,int*) ;} ;

/* Variables and functions */
 scalar_t__ FUNC0 (char const) ; 
 int FUNC1 (char const*,char*) ; 
 char** month_names ; 
 char** number_name ; 
 struct special* special ; 
 int FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (struct tm*,struct tm*,int*) ; 
 struct typelen* typelen ; 
 int /*<<< orphan*/  FUNC4 (struct tm*,struct tm*,int) ; 
 char** weekday_names ; 

__attribute__((used)) static const char *FUNC5(const char *date, struct tm *tm, struct tm *now, int *num, int *touched)
{
	const struct typelen *tl;
	const struct special *s;
	const char *end = date;
	int i;

	while (FUNC0(*++end))
		;

	for (i = 0; i < 12; i++) {
		int match = FUNC1(date, month_names[i]);
		if (match >= 3) {
			tm->tm_mon = i;
			*touched = 1;
			return end;
		}
	}

	for (s = special; s->name; s++) {
		int len = FUNC2(s->name);
		if (FUNC1(date, s->name) == len) {
			s->fn(tm, now, num);
			*touched = 1;
			return end;
		}
	}

	if (!*num) {
		for (i = 1; i < 11; i++) {
			int len = FUNC2(number_name[i]);
			if (FUNC1(date, number_name[i]) == len) {
				*num = i;
				*touched = 1;
				return end;
			}
		}
		if (FUNC1(date, "last") == 4) {
			*num = 1;
			*touched = 1;
		}
		return end;
	}

	tl = typelen;
	while (tl->type) {
		int len = FUNC2(tl->type);
		if (FUNC1(date, tl->type) >= len-1) {
			FUNC4(tm, now, tl->length * *num);
			*num = 0;
			*touched = 1;
			return end;
		}
		tl++;
	}

	for (i = 0; i < 7; i++) {
		int match = FUNC1(date, weekday_names[i]);
		if (match >= 3) {
			int diff, n = *num -1;
			*num = 0;

			diff = tm->tm_wday - i;
			if (diff <= 0)
				n++;
			diff += 7*n;

			FUNC4(tm, now, diff * 24 * 60 * 60);
			*touched = 1;
			return end;
		}
	}

	if (FUNC1(date, "months") >= 5) {
		int n;
		FUNC4(tm, now, 0); /* fill in date fields if needed */
		n = tm->tm_mon - *num;
		*num = 0;
		while (n < 0) {
			n += 12;
			tm->tm_year--;
		}
		tm->tm_mon = n;
		*touched = 1;
		return end;
	}

	if (FUNC1(date, "years") >= 4) {
		FUNC4(tm, now, 0); /* fill in date fields if needed */
		tm->tm_year -= *num;
		*num = 0;
		*touched = 1;
		return end;
	}

	return end;
}