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
 int /*<<< orphan*/  FUNC0 (char) ; 
 char* FUNC1 (int) ; 
 scalar_t__ FUNC2 (char) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 
 char* prep_buf ; 

char *FUNC4 (char *x) {
  char *s = prep_buf;
  int i=0, j=0;

  while (x[i] && !FUNC2 (x[i])) {
    i++;
  }

  while (x[i]) {
    while (FUNC2 (x[i])) {
      FUNC0(x[i++]);
    }
    while (x[i] && !FUNC2 (x[i])) {
      i++;
    }
    if (!x[i])
    {
      FUNC0('+');
      break;
    }
    FUNC0('+');
  }

  FUNC0(0);

  char *res = FUNC1 (j);
  if (res == NULL) {
    return res;
  }
  FUNC3 (res, prep_buf, j);

  return res;
}