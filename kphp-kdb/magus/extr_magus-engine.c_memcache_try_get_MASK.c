#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct connection {int dummy; } ;
struct TYPE_4__ {char* text; } ;
typedef  TYPE_1__ message ;

/* Variables and functions */
 int /*<<< orphan*/  GET_LOG ; 
 int /*<<< orphan*/  INIT ; 
 TYPE_1__* FUNC0 (struct connection*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  SET_LOG_VERBOSITY ; 
 scalar_t__ STATS_BUFF_SIZE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ buf ; 
 int /*<<< orphan*/  FUNC3 (char const*,int,char**,int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,char const*,int) ; 
 int /*<<< orphan*/  get ; 
 int FUNC5 (int,int,int,scalar_t__) ; 
 int FUNC6 (int,int,int,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (char*,char const*,int) ; 
 int FUNC8 () ; 
 scalar_t__ FUNC9 (TYPE_1__*,int) ; 
 int FUNC10 (struct connection*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (struct connection*,char const*,scalar_t__,int) ; 
 int FUNC12 (char*,char*,int*,int*,...) ; 
 scalar_t__ stats_buff ; 
 int /*<<< orphan*/  stderr ; 
 int FUNC13 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (char*,char*,int) ; 
 int verbosity ; 

int FUNC15 (struct connection *c, const char *old_key, int old_key_len) {
  FUNC7 ("memcache_get: key='%s', key_len=%d\n", old_key, old_key_len);

  if (verbosity > 1) {
    FUNC4 (stderr, "memcache_get: key='%s', key_len=%d\n", old_key, old_key_len);
  }

  char *key;
  int key_len;

  FUNC3 (old_key, old_key_len, &key, &key_len);

  if (key_len >= 5 && !FUNC14 (key, "stats", 5)) {
    int len = FUNC8 ();
    int len2 = FUNC10 (c, stats_buff + len, STATS_BUFF_SIZE - len);
    FUNC11 (c, old_key, stats_buff, len + len2 - 1);

    return 0;
  }

  GET_LOG;

  SET_LOG_VERBOSITY;

  INIT;

  if (key_len >= 5 && !FUNC14 (key, "hints", 5)) {
    int random_tag, cur_add;
    int fn, user_id, type;
    message *msg = FUNC0(c);

    if (FUNC12 (key, "hints%d%n", &random_tag, &cur_add) != 1 || FUNC9 (msg, random_tag) < 0 || cur_add < key_len) {
      FUNC1(get, 0);
    }

    char *s = msg->text;
    int cur = 0;
    cur_add = 0;

    FUNC2 (s != NULL);

    if (FUNC12 (s, "%d,%d,%d%n", &user_id, &type, &fn, &cur_add) != 3 || fn <= 0) {
      FUNC1(get, 0);
    }
    cur += cur_add;

    int res = FUNC6 (user_id, type, fn, s + cur, buf);

    if (res >= 0) {
      FUNC11 (c, old_key, buf, FUNC13 (buf));
      FUNC1(get, 0);
    }

    FUNC1(get, res);
  }

  if (key_len >= 10 && !FUNC14 (key, "apps_hints", 10)) {
    int fn, user_id;
    int cur = 10, cur_add;
    if (FUNC12 (key + cur, "%d,%d%n", &user_id, &fn, &cur_add) != 2 || fn <= 0) {
      FUNC1(get, 0);
    }
    cur += cur_add;

    int res = FUNC6 (user_id, 41, fn, key + cur, buf);

    if (res >= 0) {
      FUNC11 (c, old_key, buf, FUNC13 (buf));
      FUNC1(get, 0);
    }

    FUNC1(get, res);
  }

  if (key_len >= 4 && !FUNC14 (key, "apps", 4)) {
    int user_id, cnt, cur_add;
    if (FUNC12 (key, "apps%d#%d%n", &user_id, &cnt, &cur_add) != 2 || cnt <= 0 || key[cur_add]) {
      FUNC1(get, 0);
    }

    int res = FUNC5 (user_id, 41, cnt, buf);

    if (res >= 0) {
      FUNC11 (c, old_key, buf, FUNC13 (buf));
      FUNC1(get, 0);
    }

    FUNC1(get, res);
  }

  FUNC1(get, 0);
}