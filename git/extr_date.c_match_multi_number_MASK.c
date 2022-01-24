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
typedef  int /*<<< orphan*/  time_t ;
struct tm {int tm_hour; long tm_min; long tm_sec; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct tm*) ; 
 int /*<<< orphan*/  FUNC1 (long,int,long,struct tm*,int /*<<< orphan*/ ,struct tm*) ; 
 scalar_t__ FUNC2 (char) ; 
 long FUNC3 (char*,char**,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(timestamp_t num, char c, const char *date,
			      char *end, struct tm *tm, time_t now)
{
	struct tm now_tm;
	struct tm *refuse_future;
	long num2, num3;

	num2 = FUNC3(end+1, &end, 10);
	num3 = -1;
	if (*end == c && FUNC2(end[1]))
		num3 = FUNC3(end+1, &end, 10);

	/* Time? Date? */
	switch (c) {
	case ':':
		if (num3 < 0)
			num3 = 0;
		if (num < 25 && num2 >= 0 && num2 < 60 && num3 >= 0 && num3 <= 60) {
			tm->tm_hour = num;
			tm->tm_min = num2;
			tm->tm_sec = num3;
			break;
		}
		return 0;

	case '-':
	case '/':
	case '.':
		if (!now)
			now = FUNC4(NULL);
		refuse_future = NULL;
		if (FUNC0(&now, &now_tm))
			refuse_future = &now_tm;

		if (num > 70) {
			/* yyyy-mm-dd? */
			if (FUNC1(num, num2, num3, NULL, now, tm))
				break;
			/* yyyy-dd-mm? */
			if (FUNC1(num, num3, num2, NULL, now, tm))
				break;
		}
		/* Our eastern European friends say dd.mm.yy[yy]
		 * is the norm there, so giving precedence to
		 * mm/dd/yy[yy] form only when separator is not '.'
		 */
		if (c != '.' &&
		    FUNC1(num3, num, num2, refuse_future, now, tm))
			break;
		/* European dd.mm.yy[yy] or funny US dd/mm/yy[yy] */
		if (FUNC1(num3, num2, num, refuse_future, now, tm))
			break;
		/* Funny European mm.dd.yy */
		if (c == '.' &&
		    FUNC1(num3, num, num2, refuse_future, now, tm))
			break;
		return 0;
	}
	return end - date;
}