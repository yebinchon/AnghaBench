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
 int /*<<< orphan*/  FUNC0 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int) ; 
 int FUNC2 (char*,char**,int) ; 
 int FUNC3 (char*,char*) ; 
 char* FUNC4 (char*,char*) ; 

char *FUNC5 (char *ptr, char *end, int *len, int *timeout) {
  int clen, next = 0;
  *len = 0;
  *timeout = 0;
  while (ptr < end) {
    ptr = FUNC4 (ptr, end);
    clen = FUNC3 (ptr, end);
    if (clen <= 0) {
      return 0;
    }
    if (next == 1) {
      if ((*ptr >= 'A' && *ptr <= 'Z') || (*ptr >= 'a' && *ptr <= 'z')) {
        *len = clen;
        return ptr;
      }
      if (*ptr == '`' && clen >= 3 && ptr[clen-1] == '`') {
        *len = clen - 2;
        return ptr + 1;
      }
      return 0;
    }
    if (next == 2) {
      if (*ptr >= '0' && *ptr <= '9' && ((clen == 3 && ptr[1] == '.') || (clen == 4 && ptr[2] == '.'))) {
        char buf[8], *tmp;
        FUNC1 (buf, ptr, clen);
        buf[clen - 2] = buf[clen - 1];
        buf[clen - 1] = 0;
        int cur = FUNC2 (buf, &tmp, 10);
        if (tmp == buf + clen - 1 && cur >= 1 && cur <= 300) {
          *timeout = cur;
        }
      }
      next = 0;
    }
    if ((*ptr >= 'A' && *ptr <= 'Z') || (*ptr >= 'a' && *ptr <= 'z')) {
      next = 0;
      if (clen == 4 && !FUNC0 (ptr, "INTO", 4)) {
        next = 1;
      } else if (clen == 4 && !FUNC0 (ptr, "FROM", 4)) {
        next = 1;
      } else if (clen == 5 && !FUNC0 (ptr, "TABLE", 5)) {
        next = 1;
      } else if (clen == 6 && !FUNC0 (ptr, "UPDATE", 6)) {
        next = 1;
      } else if (clen == 7 && !FUNC0 (ptr, "TIMEOUT", 7)) {
        next = 2;
      }
    }
    ptr += clen;
  }
  return 0;
}