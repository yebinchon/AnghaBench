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
typedef  int /*<<< orphan*/  privacy_key_t ;

/* Variables and functions */
 int binlog_disabled ; 
 int FUNC0 (int) ; 
 int FUNC1 (int,int) ; 
 int FUNC2 (int,int) ; 
 int FUNC3 (int,int) ; 
 int FUNC4 (int,int /*<<< orphan*/ ) ; 
 int FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  FUNC7 (char const*,int /*<<< orphan*/ *,int) ; 
 scalar_t__ reverse_friends_mode ; 
 int FUNC8 (char const*,char*,int*,...) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ verbosity ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*,int) ; 

int FUNC10 (struct connection *c, const char *key, int key_len) {
  int user_id, arg = 0;
  privacy_key_t privacy_key;

  if (verbosity > 0) {
    FUNC6 (stderr, "delete \"%s\"\n", key);
  }

  int res = -1;

  if (binlog_disabled == 2 || reverse_friends_mode) {
    FUNC9 (&c->Out, "NOT_FOUND\r\n", 11);
    return 0;
  }

  switch (*key) {
  case 'u':
    if (FUNC8 (key, "user%d ", &user_id) == 1) {
      res = FUNC5 (user_id);
    }
    break;
  case 'f':
    if (FUNC8 (key, "friend_cat%d_%d ", &user_id, &arg) == 2) {
      res = FUNC2 (user_id, arg);
    }
    if (FUNC8 (key, "friendreq%d_%d ", &user_id, &arg) == 2) {
      res = FUNC3 (user_id, arg);
    }
    if (FUNC8 (key, "friend%d_%d ", &user_id, &arg) == 2) {
      res = FUNC1 (user_id, arg);
    }
    break;
  case 'p':
    if (FUNC8 (key, "privacy%d_%n", &user_id, &arg) >= 1 && FUNC7 (key+arg, &privacy_key, 1) > 0) {
      res = FUNC4 (user_id, privacy_key);
    }
    break;
  case 'r':
    if (FUNC8 (key, "requests%d ", &user_id) == 1) {
      res = FUNC0 (user_id);
    }
    break;
  }

  if (res > 0) {
    FUNC9 (&c->Out, "DELETED\r\n", 9);
  } else {
    FUNC9 (&c->Out, "NOT_FOUND\r\n", 11);
  }

  return 0;
}