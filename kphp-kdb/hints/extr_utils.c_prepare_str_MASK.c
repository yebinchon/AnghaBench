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
 int MAX_NAME_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 char* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 
 char* prep_buf ; 
 int /*<<< orphan*/  prep_ibuf ; 
 int* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (unsigned char*,int /*<<< orphan*/ ) ; 
 int FUNC6 (char*) ; 

char *FUNC7 (char *x) {
  if (FUNC6 (x) >= MAX_NAME_SIZE / 4) {
    return NULL;
  }

  FUNC5 ((unsigned char *)x, prep_ibuf);
  int *v = FUNC3 (prep_ibuf);
  char *s = prep_buf;

  while (*v != 0) {
    s += FUNC4 (*v++, s);
  }
  *s++ = 0;

  FUNC0 (s - prep_buf < MAX_NAME_SIZE);

  char *res = FUNC1 (s - prep_buf);
  if (res == NULL) {
    return res;
  }

  FUNC2 (res, prep_buf, s - prep_buf);
  return res;
}