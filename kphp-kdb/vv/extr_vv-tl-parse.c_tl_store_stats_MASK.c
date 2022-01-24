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
 int TL_STAT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char const*,int) ; 

int FUNC3 (const char *s, int raw) {
  int i, n = 0, key_start = 0, value_start = -1;
  for (i = 0; s[i]; i++) {
    if (s[i] == '\n') {
      if (value_start - key_start > 1 && value_start < i) {
        n++;
      }
      key_start = i + 1;
      value_start = -1;
    } else if (s[i] == '\t') {
      value_start = value_start == -1 ? i + 1 : -2;
    }
  }
  if (!raw) {
    FUNC1 (TL_STAT);
  }
  FUNC1 (n);
  key_start = 0;
  value_start = -1;
  int m = 0;
  for (i = 0; s[i]; i++) {
    if (s[i] == '\n') {
      if (value_start - key_start > 1 && value_start < i) {
        FUNC2 (s + key_start, value_start - key_start - 1); /* - 1 (trim tabular) */
        FUNC2 (s + value_start, i - value_start);
        m++;
      }
      key_start = i + 1;
      value_start = -1;
    } else if (s[i] == '\t') {
      value_start = value_start == -1 ? i + 1 : -2;
    }
  }
  FUNC0 (m == n);
  return n;
}