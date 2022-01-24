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
struct tm {scalar_t__ tm_sec; scalar_t__ tm_min; scalar_t__ tm_hour; scalar_t__ tm_year; int /*<<< orphan*/  tm_mon; scalar_t__ tm_mday; int /*<<< orphan*/  tm_wday; } ;

/* Variables and functions */
 int H2O_TIMESTR_RFC1123_LEN ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 char* FUNC1 (char*,scalar_t__,int) ; 
 char* FUNC2 (char*,int /*<<< orphan*/ ) ; 
 char* FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int) ; 

void FUNC5(char *buf, struct tm *gmt)
{
    char *p = buf;

    /* format: Fri, 19 Sep 2014 05:24:04 GMT */
    p = FUNC3(p, gmt->tm_wday);
    *p++ = ',';
    *p++ = ' ';
    p = FUNC1(p, gmt->tm_mday, 2);
    *p++ = ' ';
    p = FUNC2(p, gmt->tm_mon);
    *p++ = ' ';
    p = FUNC1(p, gmt->tm_year + 1900, 4);
    *p++ = ' ';
    p = FUNC1(p, gmt->tm_hour, 2);
    *p++ = ':';
    p = FUNC1(p, gmt->tm_min, 2);
    *p++ = ':';
    p = FUNC1(p, gmt->tm_sec, 2);
    FUNC4(p, " GMT", 4);
    p += 4;
    *p = '\0';

    FUNC0(p - buf == H2O_TIMESTR_RFC1123_LEN);
}