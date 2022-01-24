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
 int FUNC0 (char const) ; 
 int FUNC1 (int) ; 
 char last_letter ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,int) ; 
 int* stem_ts ; 

int FUNC3 (const char *s, char *res, int len) {
  int n;
  for (n = 0; n < len && s[n]; n++) {
    stem_ts[n] = FUNC0 (s[n]);
  }
  stem_ts[n] = -1;
  int len2 = FUNC1 (n);
  FUNC2 (res, s, len2 * sizeof (char));
  if (last_letter && len2 > 0) {
    res[len2 - 1] = last_letter;
  }
  res[len2] = 0;
  return len2;
}