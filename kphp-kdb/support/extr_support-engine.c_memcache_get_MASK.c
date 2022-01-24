#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct connection {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  text; int /*<<< orphan*/  len; } ;
typedef  TYPE_1__ message ;

/* Variables and functions */
 int /*<<< orphan*/  GET_LOG ; 
 int /*<<< orphan*/  INIT ; 
 int MAX_RES ; 
 TYPE_1__* FUNC0 (struct connection*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SET_LOG_VERBOSITY ; 
 scalar_t__ STATS_BUFF_SIZE ; 
 int /*<<< orphan*/  delete ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char const*,int,char**,int*) ; 
 int /*<<< orphan*/  get ; 
 char* FUNC4 (int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 scalar_t__ FUNC7 (TYPE_1__*,int) ; 
 int FUNC8 (struct connection*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (struct connection*,char const*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC10 (struct connection*,char const*,char*,int /*<<< orphan*/ ,int) ; 
 int FUNC11 (char*,char*,int*,int*,...) ; 
 scalar_t__ stats_buff ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 (char*,char*,int) ; 
 int FUNC14 () ; 

int FUNC15 (struct connection *c, const char *old_key, int old_key_len) {
  FUNC5 ("memcache_get: key='%s', key_len=%d\n", old_key, old_key_len);

  char *key;
  int key_len;
  FUNC3 (old_key, old_key_len, &key, &key_len);

  if (key_len >= 5 && !FUNC13 (key, "stats", 5)) {
    int len = FUNC14 ();
    int len2 = FUNC8 (c, stats_buff + len, STATS_BUFF_SIZE - len);
    FUNC9 (c, old_key, stats_buff, len + len2 - 1);

    return 0;
  }

  GET_LOG;

  SET_LOG_VERBOSITY;

  INIT;

  if (key_len >= 6 && !FUNC13 (key, "answer", 6)) {
    int add = 6, debug = 0;
    if (!FUNC13 (key + 6, "_debug", 6)) {
      debug = 1;
      add += 6;
    }
    int user_id, agent_id, random_tag, cur, cnt = MAX_RES;
    if (FUNC11 (key + add, "%d,%d,%d%n#%d%n", &user_id, &agent_id, &random_tag, &cur, &cnt, &cur) < 3 || key[add + cur]) {
      FUNC1 (get, 0);
    }
    message *msg = FUNC0 (c);

    if (FUNC7 (msg, random_tag) < 0 || cnt <= 0) {
      FUNC6 (msg);
      FUNC1 (get, 0);
    }

    char *res = FUNC4 (user_id, agent_id, msg->len, msg->text, cnt, debug);

    if (res != NULL) {
      FUNC10 (c, old_key, res, FUNC12 (res), 1);
    }

    FUNC6 (msg);
    FUNC1 (get, 0);
  }

  if (key_len >= 13 && !FUNC13 (key, "delete_answer", 13)) {
    int add = 13;
    int user_id, cur;
    if (FUNC11 (key + add, "%d%n", &user_id, &cur) < 1 || key[add + cur]) {
      FUNC1 (delete, 0);
    }

    int res = FUNC2 (user_id);

    if (res) {
      FUNC10 (c, old_key, "DELETED", FUNC12 ("DELETED"), 1);
    }

    FUNC1 (delete, 0);
  }

  FUNC1 (delete, 0);
}