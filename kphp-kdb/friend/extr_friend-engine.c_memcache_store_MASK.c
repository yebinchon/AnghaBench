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
struct connection {int /*<<< orphan*/  In; } ;
typedef  int /*<<< orphan*/  privacy_key_t ;

/* Variables and functions */
 int /*<<< orphan*/  MAX_RES ; 
 int /*<<< orphan*/  R ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*) ; 
 int binlog_disabled ; 
 int FUNC2 (int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (int,int,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int,int,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (int,int /*<<< orphan*/ ,scalar_t__*,int,int) ; 
 int FUNC6 (struct connection*,char const*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int,...) ; 
 int mct_add ; 
 int mct_set ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC9 (char const*,int /*<<< orphan*/ *,int) ; 
 int FUNC10 (int /*<<< orphan*/ *,scalar_t__*,int) ; 
 scalar_t__ reverse_friends_mode ; 
 int FUNC11 (char const*,char*,int*,int*) ; 
 scalar_t__* stats_buff ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC12 (char const*,char*,int) ; 
 scalar_t__ verbosity ; 

int FUNC13 (struct connection *c, int op, const char *key, int key_len, int flags, int delay, int size) {
  int user_id, cat = 0, friend_id = 0, i;
  privacy_key_t privacy_key = 0;

  if (verbosity > 0) {
    FUNC7 (stderr, "mc_store: op=%d, key=\"%s\", flags=%d, delay=%d, bytes=%d\n", op, key, flags, delay, size);
  }

  if (binlog_disabled == 2) {
    return -2;
  }

  if (reverse_friends_mode) {
    if (op == mct_set && key_len >= 8 && !FUNC12 (key, "userlist", 8)) {
      return FUNC6 (c, key, key_len, size);
    }
    return 0;
  }

  if (op == mct_set && FUNC11 (key, "friends%d_%d", &user_id, &cat) == 2 && user_id > 0 && cat > 0 && cat < 32) {
    int s = FUNC8 (R, MAX_RES, &c->In, size);
    int res = 0;
    if (s >= 0) {
      res = FUNC4 (user_id, cat, R, s);
    }
    if (verbosity > 0) {
      FUNC7 (stderr, "set friend cat list: size = %d, res = %d\n", s, res);
    }
    return res;
  }

  if (size > 1024) {
    return -2;
  }

  FUNC0 (FUNC10 (&c->In, stats_buff, size) == size);
  stats_buff[size] = 0;

  if (FUNC11 (key, "friendreq%d_%d", &user_id, &friend_id) == 2 && user_id > 0 && friend_id > 0) {
    return FUNC3 (user_id, friend_id, FUNC1(stats_buff), (op == mct_add) * 2 + (op == mct_set)) >= 0;
  }

  if (op != mct_add && FUNC11 (key, "friend%d_%d", &user_id, &friend_id) == 2 && user_id > 0 && friend_id > 0) {
    return FUNC2 (user_id, friend_id, FUNC1(stats_buff), 0, op == mct_set);
  }

  if (op != mct_add && FUNC11 (key, "privacy%d_%n", &user_id, &i) >= 1 && user_id > 0 && FUNC9 (key+i, &privacy_key, 1) > 0) {
    return FUNC5 (user_id, privacy_key, stats_buff, size, op == mct_set);
  }

  return 0;
}