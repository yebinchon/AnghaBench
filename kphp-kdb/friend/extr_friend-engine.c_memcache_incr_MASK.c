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
struct connection {int /*<<< orphan*/  Out; } ;

/* Variables and functions */
 int binlog_disabled ; 
 int FUNC0 (int,int,long long,long long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char const*,char*,int) ; 
 int /*<<< orphan*/  reverse_friends_mode ; 
 int FUNC2 (char*,char*,int) ; 
 int FUNC3 (char const*,char*,int*,int*) ; 
 char* stats_buff ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int) ; 

int FUNC5 (struct connection *c, int op, const char *key, int len, long long arg) {
  int user_id, friend_id;

  if (len >= 7 && !FUNC1 (key, "friend", 6) && !reverse_friends_mode) {
    int res = -1;
    if (binlog_disabled != 2 && FUNC3 (key, "friend%d_%d", &user_id, &friend_id) >= 2) {
      res = FUNC0 (user_id, friend_id, op ? 0 : arg, ~arg, 0);
    }
    if (res > 0) {
      FUNC4 (&c->Out, stats_buff, FUNC2(stats_buff, "%d\r\n", res));
    } else {
      FUNC4 (&c->Out, "NOT_FOUND\r\n", 11);
    }
    return 0;
  }

  FUNC4 (&c->Out, "NOT_FOUND\r\n", 11);
  return 0;
}