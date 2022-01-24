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

/* Variables and functions */
 long long INT_MAX ; 
 long long INT_MIN ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char const* const) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 
 long long FUNC3 (char*,char**,int) ; 

char *FUNC4 (char *p, int line, const char *const actions_filename, int *r) {
  errno = 0;
  long long l;
  if (!FUNC2 (p, "0x", 2)) {
    l = FUNC3 (p, &p, 16);
  } else if (!FUNC2 (p, "0", 1)) {
    l = FUNC3 (p, &p, 8);
  } else {
    l = FUNC3 (p, &p, 10);
  }
  if (errno != 0) {
    FUNC1 ("strtoll failed during parsing int at line %d in %s.\n", line, actions_filename);
    FUNC0 (1);
  }
  if (l < INT_MIN || l > INT_MAX) {
    FUNC1 ("signed 32 bit integer is out of range at line %d in %s.\n", line, actions_filename);
    FUNC0 (1);
  }
  *r = l;
  return p;
}