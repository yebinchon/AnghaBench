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
typedef  int timestamp_t ;
typedef  int time_t ;
struct tm {int tm_year; int tm_mday; int tm_mon; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int*,struct tm*) ; 
 scalar_t__ FUNC1 (char const) ; 
 int FUNC2 (int,char,char const*,char*,struct tm*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct tm*) ; 
 int FUNC4 (char const*,char**,int) ; 

__attribute__((used)) static int FUNC5(const char *date, struct tm *tm, int *offset, int *tm_gmt)
{
	int n;
	char *end;
	timestamp_t num;

	num = FUNC4(date, &end, 10);

	/*
	 * Seconds since 1970? We trigger on that for any numbers with
	 * more than 8 digits. This is because we don't want to rule out
	 * numbers like 20070606 as a YYYYMMDD date.
	 */
	if (num >= 100000000 && FUNC3(tm)) {
		time_t time = num;
		if (FUNC0(&time, tm)) {
			*tm_gmt = 1;
			return end - date;
		}
	}

	/*
	 * Check for special formats: num[-.:/]num[same]num
	 */
	switch (*end) {
	case ':':
	case '.':
	case '/':
	case '-':
		if (FUNC1(end[1])) {
			int match = FUNC2(num, *end, date, end, tm, 0);
			if (match)
				return match;
		}
	}

	/*
	 * None of the special formats? Try to guess what
	 * the number meant. We use the number of digits
	 * to make a more educated guess..
	 */
	n = 0;
	do {
		n++;
	} while (FUNC1(date[n]));

	/* Four-digit year or a timezone? */
	if (n == 4) {
		if (num <= 1400 && *offset == -1) {
			unsigned int minutes = num % 100;
			unsigned int hours = num / 100;
			*offset = hours*60 + minutes;
		} else if (num > 1900 && num < 2100)
			tm->tm_year = num - 1900;
		return n;
	}

	/*
	 * Ignore lots of numerals. We took care of 4-digit years above.
	 * Days or months must be one or two digits.
	 */
	if (n > 2)
		return n;

	/*
	 * NOTE! We will give precedence to day-of-month over month or
	 * year numbers in the 1-12 range. So 05 is always "mday 5",
	 * unless we already have a mday..
	 *
	 * IOW, 01 Apr 05 parses as "April 1st, 2005".
	 */
	if (num > 0 && num < 32 && tm->tm_mday < 0) {
		tm->tm_mday = num;
		return n;
	}

	/* Two-digit year? */
	if (n == 2 && tm->tm_year < 0) {
		if (num < 10 && tm->tm_mday >= 0) {
			tm->tm_year = num + 100;
			return n;
		}
		if (num >= 70) {
			tm->tm_year = num;
			return n;
		}
	}

	if (num > 0 && num < 13 && tm->tm_mon < 0)
		tm->tm_mon = num-1;

	return n;
}