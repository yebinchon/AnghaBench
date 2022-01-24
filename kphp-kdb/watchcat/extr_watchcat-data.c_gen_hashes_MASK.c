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
 int /*<<< orphan*/  FUNC1 (long long*,int) ; 
 int FUNC2 (long long*,int) ; 
 long long* prep_lbuf_res ; 
 char* FUNC3 (char*,int /*<<< orphan*/ ) ; 

int FUNC4 (char *x) {
  char *v = FUNC3 (x, 0);
  if (v == NULL) {
    prep_lbuf_res[0] = 0;
    return 0;
  }

  int i;

  long long *u = prep_lbuf_res;
  int un = 0;

  for (i = 0; v[i]; ) {
    long long h = 3213211;

    while (v[i] && v[i] != '+') {
      h = h * 999983 + v[i];
      i++;
    }
    if (v[i]) {
      i++;
    }

    if (h == 0) {
      h = 1;
    }
    u[un++] = h;
  }

  FUNC0 (un < MAX_NAME_SIZE);

  FUNC1 (u, un);
  un = FUNC2 (u, un);

  return un;
}