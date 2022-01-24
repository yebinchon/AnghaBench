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
typedef  int /*<<< orphan*/  tm ;
struct tm {int tm_wday; int tm_yday; scalar_t__ tm_mday; int tm_mon; } ;
typedef  int /*<<< orphan*/  jv ;
typedef  int /*<<< orphan*/  jq_state ;

/* Variables and functions */
 scalar_t__ JV_KIND_STRING ; 
 int /*<<< orphan*/  FUNC0 (char const) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char const*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*,char const*) ; 
 char* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct tm*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct tm*) ; 
 int /*<<< orphan*/  FUNC10 (struct tm*) ; 
 scalar_t__ FUNC11 (char const*,char*) ; 
 char* FUNC12 (char const*,char const*,struct tm*) ; 
 int /*<<< orphan*/  FUNC13 (struct tm*) ; 

__attribute__((used)) static jv FUNC14(jq_state *jq, jv a, jv b) {
  if (FUNC3(a) != JV_KIND_STRING || FUNC3(b) != JV_KIND_STRING) {
    return FUNC8(a, b, FUNC4("strptime/1 requires string inputs and arguments"));
  }

  struct tm tm;
  FUNC7(&tm, 0, sizeof(tm));
  tm.tm_wday = 8; // sentinel
  tm.tm_yday = 367; // sentinel
  const char *input = FUNC6(a);
  const char *fmt = FUNC6(b);

#ifndef HAVE_STRPTIME
  if (FUNC11(fmt, "%Y-%m-%dT%H:%M:%SZ")) {
    return FUNC8(a, b, FUNC4("strptime/1 only supports ISO 8601 on this platform"));
  }
#endif
  const char *end = FUNC12(input, fmt, &tm);
  if (end == NULL || (*end != '\0' && !FUNC0(*end))) {
    return FUNC8(a, b, FUNC5("date \"%s\" does not match format \"%s\"", input, fmt));
  }
  FUNC2(b);
  /*
   * This is OS X or some *BSD whose strptime() is just not that
   * helpful!
   *
   * We don't know that the format string did involve parsing a
   * year, or a month (if tm->tm_mon == 0).  But with our invalid
   * day-of-week and day-of-year sentinel checks above, the worst
   * this can do is produce garbage.
   */
#ifdef __APPLE__
  /*
   * Apple has made it worse, and different versions of the OS have different
   * behaviors. Some versions just don't touch the fields, but others do, and
   * sometimes provide wrong answers, at that! We can't tell at compile-time
   * which behavior the target system will have, so instead we always use our
   * functions to set these on OS X, and document that %u and %j are
   * unsupported on OS X.
   */
  set_tm_wday(&tm);
  set_tm_yday(&tm);
#else
  if (tm.tm_wday == 8 && tm.tm_mday != 0 && tm.tm_mon >= 0 && tm.tm_mon <= 11)
    FUNC9(&tm);
  if (tm.tm_yday == 367 && tm.tm_mday != 0 && tm.tm_mon >= 0 && tm.tm_mon <= 11)
    FUNC10(&tm);
#endif
  jv r = FUNC13(&tm);
  if (*end != '\0')
    r = FUNC1(r, FUNC4(end));
  FUNC2(a); // must come after `*end` because `end` is a pointer into `a`'s string
  return r;
}