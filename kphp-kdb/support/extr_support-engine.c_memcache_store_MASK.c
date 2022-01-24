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
 int FUNC2 (int,int,int,int,char*) ; 
 int FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (char const*,int,char**,int*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*,int,int) ; 
 char* FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  set ; 
 int FUNC9 (char*,char*,int*,...) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*,int) ; 
 scalar_t__ FUNC11 (int) ; 

int FUNC12 (struct connection *c, int op, const char *old_key, int old_key_len, int flags, int delay, int size) {
  INIT;

  FUNC5 ("memcache_store: key='%s', key_len=%d, value_len=%d\n", old_key, old_key_len, size);

  if (FUNC11 (size >= MAX_VALUE_LEN)) {
    FUNC1 (set, -2);
  }

  char *key;
  int key_len;
  FUNC4 (old_key, old_key_len, &key, &key_len);

  //set("question{$random_tag}", "$text")
  if (key_len >= 8 && !FUNC10 (key, "question", 8)) {
    int random_tag;
    if (FUNC9 (key + 8, "%d", &random_tag) != 1) {
      FUNC1 (set, -2);
    }

    if (FUNC7 (FUNC0 (c), size, random_tag) < 0) {
      FUNC1 (set, -2);
    }
    FUNC8 (&c->In, FUNC6 (FUNC0 (c)), size);

    FUNC1 (set, 1);
  }

  if (key_len >= 6 && !FUNC10 (key, "answer", 6)) {
    int user_id, agent_id, mark, cur;
    FUNC8 (&c->In, buf, size);

    if (FUNC9 (key + 6, "%d,%d,%d%n", &user_id, &agent_id, &mark, &cur) < 3 || key[6 + cur]) {
      FUNC1 (set, 0);
    }

    int res = FUNC2 (user_id, agent_id, mark, size, buf);
    FUNC1 (set, res);
  }

  //get("mark{$question_id}", {$new_mark});
  if (key_len >= 4 && !FUNC10 (key, "mark", 4)) {
    int user_id, mark, cur;
    FUNC8 (&c->In, buf, size);

    if (FUNC9 (key + 4, "%d%n", &user_id, &cur) < 1 || key[4 + cur] || FUNC9 (buf, "%d%n", &mark, &cur) < 1 || buf[cur]) {
      FUNC1 (set, 0);
    }

    int res = FUNC3 (user_id, mark);
    FUNC1 (set, res);
  }

  FUNC1 (set, -2);
}