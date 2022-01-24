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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,int,int) ; 
 int FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct connection*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC4 (char const*,char*,int*,int*) ; 
 int /*<<< orphan*/  stats_buff ; 
 int /*<<< orphan*/  stderr ; 
 int verbosity ; 

void FUNC5 (struct connection *c, const char *str, int len) {
  int user_id, friend_id;
  if (FUNC4 (str, "friendreq%d_%d", &user_id, &friend_id) >= 2) {
    int res = FUNC1 (user_id, friend_id);
    if (verbosity > 1) {
      FUNC0 (stderr, "get_friend_request_cat(%d,%d) = %d\n", user_id, friend_id, res);
    }
    if (res >= 0) {
      FUNC2 (c, str, stats_buff, FUNC3(stats_buff, "%d", res));
      return;
    }
  }
  return;
}