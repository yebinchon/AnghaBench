#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {char* log_format; } ;
typedef  int /*<<< orphan*/  GLogItem ;

/* Variables and functions */
 TYPE_1__ conf ; 
 int FUNC0 (char*,char*) ; 
 scalar_t__ FUNC1 (char) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ *,char**,char*,char*) ; 
 int FUNC4 (int /*<<< orphan*/ *,char**,char**) ; 

__attribute__((used)) static int
FUNC5 (GLogItem * logitem, char *str)
{
  char end[2 + 1] = { 0 };
  char *lfmt = conf.log_format, *p = NULL;
  int perc = 0, tilde = 0, optdelim = 0;

  if (str == NULL || *str == '\0')
    return 1;

  /* iterate over the log format */
  for (p = lfmt; *p; p++) {
    /* advance to the first unescaped delim */
    if (*p == '\\')
      continue;
    if (*p == '%') {
      perc++;
      continue;
    }
    if (*p == '~' && perc == 0) {
      tilde++;
      continue;
    }

    if (tilde && *p != '\0') {
      if ((str == NULL) || (*str == '\0'))
        return 0;
      if (FUNC4 (logitem, &str, &p) == 1)
        return 1;
      tilde = 0;
    }
    /* %h */
    else if (perc && *p != '\0') {
      if ((str == NULL) || (*str == '\0'))
        return 0;

      FUNC2 (end, 0, sizeof end);
      optdelim = FUNC0 (end, p);
      /* attempt to parse format specifiers */
      if (FUNC3 (logitem, &str, p, end) == 1)
        return 1;
      /* account for the extra delimiter */
      if (optdelim)
        p++;
      perc = 0;
    } else if (perc && FUNC1 (p[0])) {
      return 1;
    } else {
      str++;
    }
  }

  return 0;
}