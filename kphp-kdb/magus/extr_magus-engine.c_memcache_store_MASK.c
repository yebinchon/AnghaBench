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

/* Variables and functions */
 int /*<<< orphan*/  INIT ; 
 int MAX_VALUE_LEN ; 
 int /*<<< orphan*/  FUNC0 (struct connection*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 char* buf ; 
 int FUNC2 (int,int,char*) ; 
 int /*<<< orphan*/  FUNC3 (char const*,int,char**,int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*,int,int) ; 
 char* FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  set ; 
 int FUNC9 (char*,char*,int*,...) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC10 (char*,char*,int) ; 
 int verbosity ; 

int FUNC11 (struct connection *c, int op, const char *old_key, int old_key_len, int flags, int delay, int size) {
  INIT;

  FUNC5 ("memcache_store: key='%s', key_len=%d, value_len=%d\n", old_key, old_key_len, size);

  if (verbosity > 1) {
    FUNC4 (stderr, "memcache_store: key='%s', key_len=%d, value_len=%d, \n", old_key, old_key_len, size);
  }

  if (size + 1 < MAX_VALUE_LEN) {
    char *key;
    int key_len;

    FUNC3 (old_key, old_key_len, &key, &key_len);

    if (key_len >= 5 && !FUNC10 (key, "hints", 5)) {
      int random_tag;

      if (FUNC9 (key, "hints%d", &random_tag) != 1) {
        FUNC1(set, -2);
      }

      if (FUNC7 (FUNC0(c), size, random_tag) < 0) {
        FUNC1(set, -2);
      }
      FUNC8 (&c->In, FUNC6 (FUNC0(c)), size);

      FUNC1(set, 1);
    }

    if (key_len >= 14 && !FUNC10 (key, "apps_exception", 14)) {
      int user_id, cur_add;
      if (FUNC9 (key, "apps_exception%d%n", &user_id, &cur_add) != 1 || user_id <= 0 || key[cur_add]) {
        FUNC1(set, -2);
      }

      FUNC8 (&c->In, buf, size);
      buf[size] = 0;

      if (verbosity > 1) {
        FUNC4 (stderr, "add apps exception %d %s\n", user_id, buf);
      }

      int result = FUNC2 (user_id, 41, buf);

      FUNC1(set, result);
    }

    if (key_len >= 9 && !FUNC10 (key, "exception", 9)) {
      int user_id, cur_add, type;
      if (FUNC9 (key, "exception%d,%d%n", &user_id, &type, &cur_add) != 2 || user_id <= 0 || type <= 0 || type > 255 || key[cur_add]) {
        FUNC1(set, -2);
      }

      FUNC8 (&c->In, buf, size);
      buf[size] = 0;

      if (verbosity > 1) {
        FUNC4 (stderr, "add exception %d %d %s\n", user_id, type, buf);
      }

      int result = FUNC2 (user_id, type, buf);
      FUNC1(set, result);
    }
  }

  FUNC1(set, -2);
}