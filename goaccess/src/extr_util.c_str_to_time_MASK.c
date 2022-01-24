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
struct tm {int tm_year; int tm_mday; unsigned long long tm_sec; int tm_isdst; } ;

/* Variables and functions */
 scalar_t__ ERANGE ; 
 unsigned long long SECS ; 
 scalar_t__ errno ; 
 int FUNC0 (struct tm*) ; 
 scalar_t__ FUNC1 (char*,char const*) ; 
 char* FUNC2 (char const*,char const*,struct tm*) ; 
 unsigned long long FUNC3 (char const*,char**,int) ; 

int
FUNC4 (const char *str, const char *fmt, struct tm *tm)
{
  char *end = NULL, *sEnd = NULL;
  unsigned long long usecs = 0;

  if (str == NULL || *str == '\0' || fmt == NULL || *fmt == '\0')
    return 1;

  /* check if char string needs to be converted from microseconds */
  if (FUNC1 ("%f", fmt) == 0) {
    errno = 0;
    tm->tm_year = 1970 - 1900;
    tm->tm_mday = 1;

    usecs = FUNC3 (str, &sEnd, 10);
    if (str == sEnd || *sEnd != '\0' || errno == ERANGE)
      return 1;

    tm->tm_sec = usecs / SECS;
    tm->tm_isdst = -1;
    if (FUNC0 (tm) == -1)
      return 1;

    return 0;
  }

  end = FUNC2 (str, fmt, tm);
  if (end == NULL || *end != '\0')
    return 1;

  return 0;
}