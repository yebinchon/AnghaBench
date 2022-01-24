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
typedef  int /*<<< orphan*/  user ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 char* location_buf ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int) ; 
 char mode ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 char* FUNC3 (int /*<<< orphan*/ *,int,int,int,int*) ; 
 int FUNC4 (int /*<<< orphan*/ *,int,int,char*,int) ; 
 scalar_t__ write_only ; 

int FUNC5 (user *u, int pid, int original) {
  if (write_only) {
    return 1;
  }

  FUNC0 (FUNC2 (u));

  int len;
  char *loc = FUNC3 (u, pid, original, 1, &len);

  if (loc == NULL) {
    return 0;
  }
  if (len == 0 || loc[0] >= 0) {
    return 1;
  }

  char *s = location_buf;
  int cur = -(loc[0] + mode) + 4 * sizeof (int) + 1;
  len -= cur;
  loc += cur;

  FUNC0 (len > 0);
  FUNC1 (s, loc, len);

  return FUNC4 (u, pid, original, location_buf, len);
}