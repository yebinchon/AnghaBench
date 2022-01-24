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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 char* FUNC2 (int /*<<< orphan*/ *,int,int,int,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int,char*,int) ; 
 scalar_t__ write_only ; 

int FUNC4 (user *u, int pid) {
  if (write_only) {
    return 1;
  }

  FUNC0 (FUNC1 (u));

  int len;
  char *loc = FUNC2 (u, pid, 1, 1, &len);
  if (loc == NULL || len <= 1) {
    return 0;
  }

  FUNC3 (u, pid, 0, loc, len);
  FUNC3 (u, pid, 1, "", 1);

  return 1;
}