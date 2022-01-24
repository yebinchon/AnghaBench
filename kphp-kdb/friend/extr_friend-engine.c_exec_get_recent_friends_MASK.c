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
struct connection {int dummy; } ;

/* Variables and functions */
 scalar_t__ R ; 
 scalar_t__ R_end ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,int,int) ; 
 int FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct connection*,char const*,int,int,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int FUNC3 (char const*,char*,int*,int*) ; 
 int /*<<< orphan*/  stderr ; 
 int verbosity ; 

void FUNC4 (struct connection *c, const char *str, int len) {
  int user_id, num;
  if (FUNC3 (str+14, "%d#%d", &user_id, &num) >= 2) {
    int res = FUNC1 (user_id, num);
    if (verbosity > 1) {
      FUNC0 (stderr, "prepare_recent_friends(%d,%d) = %d\n", user_id, num, res);
    }
    if (res >= 0) {
      FUNC2 (c, str, len, res, 0, R, R_end - R);
      return;
    }
  }
  return;
}