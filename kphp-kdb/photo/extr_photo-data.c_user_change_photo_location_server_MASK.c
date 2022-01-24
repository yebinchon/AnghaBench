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
 scalar_t__ location_buf ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,char*,int) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 char* FUNC3 (int /*<<< orphan*/ *,int,int,int,int*) ; 
 int FUNC4 (int /*<<< orphan*/ *,int,int,scalar_t__,int) ; 
 scalar_t__ write_only ; 

int FUNC5 (user *u, int pid, int original, int server_num, int sid) {
  FUNC0 (0 <= server_num && server_num <= 1);

  if (write_only) {
    return 1;
  }

  FUNC0 (FUNC2 (u));

  int len;
  char *loc = FUNC3 (u, pid, original, 1, &len);

  if (loc == NULL || len == 0 || loc[0] >= 0) {
    return 0;
  }

  FUNC1 (location_buf, loc, len);
  FUNC0 (len >= 1 + 2 * sizeof (int));
  int *server = (int *)(location_buf + 1);
  server[server_num] = sid;

  return FUNC4 (u, pid, original, location_buf, len);
}