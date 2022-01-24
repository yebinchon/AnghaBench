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
 int /*<<< orphan*/  FUNC0 (char const*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int) ; 
 int FUNC2 (char const*) ; 

int FUNC3 (char *buffer, int b_len, const char *arg_name, char *where, int where_len) {
  char *where_end = where + where_len;
  int arg_len = FUNC2 (arg_name);
  while (where < where_end) {
    char *start = where;
    while (where < where_end && (*where != '=' && *where != '&')) {
      ++where;
    }
    if (where == where_end) {
      buffer[0] = 0;
      return -1;
    }
    if (*where == '=') {
      if (arg_len == where - start && !FUNC0 (arg_name, start, arg_len)) {
        start = ++where;
        while (where < where_end && *where != '&') {
          ++where;
        }
        b_len--;
        if (where - start < b_len) {
          b_len = where - start;
        }
        FUNC1 (buffer, start, b_len);
        buffer[b_len] = 0;
        return b_len;
      }
      ++where;
    }
    while (where < where_end && *where != '&') {
      ++where;
    }
    if (where < where_end) {
      ++where;
    }
  }
  buffer[0] = 0;
  return -1;
}