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
 int FUNC0 (int,int) ; 
 int FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (struct connection*) ; 
 int FUNC4 (int,int /*<<< orphan*/ ) ; 
 int FUNC5 (char const*,char*,int*,...) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC6 (char const*,char*,int) ; 
 scalar_t__ FUNC7 (int) ; 
 int verbosity ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,int) ; 

int FUNC9 (struct connection *c, const char *key, int key_len) {
  int user_id, local_id;
  if (verbosity > 1) {
    FUNC2 (stderr, "memcache_delete: key='%s'\n", key);
  }

  FUNC3 (c);

  if (key_len >= 8 && !FUNC6 (key, "userdata", 8)) {
    if (FUNC5 (key, "userdata%d", &user_id) == 1) {
      if (FUNC7 (user_id) > 0) {
 	FUNC8 (&c->Out, "DELETED\r\n", 9);
	return 0;
      } else {
 	FUNC8 (&c->Out, "NOT_FOUND\r\n", 11);
	return 0;
      }
    }
  }

  if (FUNC5 (key, "message%d_%d", &user_id, &local_id) == 2 && user_id && local_id > 0) {
    if (FUNC1 (user_id, local_id) == 1) {
      FUNC8 (&c->Out, "DELETED\r\n", 9);
      return 0;
    } else {
      FUNC8 (&c->Out, "NOT_FOUND\r\n", 11);
      return 0;
    }
  }

  if (FUNC5 (key, "first_messages%d_%d", &user_id, &local_id) == 2 && user_id && local_id > 0) {
    if (FUNC0 (user_id, local_id) == 1) {
      FUNC8 (&c->Out, "DELETED\r\n", 9);
      return 0;
    } else {
      FUNC8 (&c->Out, "NOT_FOUND\r\n", 11);
      return 0;
    }
  }

  if (FUNC5 (key, "secret%d", &user_id) == 1 && user_id) { 
    if (FUNC4 (user_id, 0) == 1) {
      FUNC8 (&c->Out, "DELETED\r\n", 9);
      return 0;
    }
  }

  FUNC8 (&c->Out, "NOT_FOUND\r\n", 11);
  return 0;
}