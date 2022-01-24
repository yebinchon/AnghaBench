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
 int MAX_DELAY ; 
 int MAX_PRIORITY ; 
 int MAX_VALUE_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int,long long,scalar_t__*) ; 
 int FUNC2 (long long,int,int,scalar_t__*) ; 
 scalar_t__* buf ; 
 int /*<<< orphan*/  FUNC3 (char const*,int,char**,int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,char const*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,scalar_t__*,int) ; 
 int /*<<< orphan*/  set ; 
 int FUNC6 (char*,char*,...) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,int) ; 
 int verbosity ; 

int FUNC8 (struct connection *c, int op, const char *old_key, int old_key_len, int flags, int delay, int size) {
  INIT;

  if (verbosity > 1) {
    FUNC4 (stderr, "memcache_store: key='%s', key_len=%d, value_len=%d, \n", old_key, old_key_len, size);
  }

  if (size + 1 < MAX_VALUE_LEN) {
    char *key;
    int key_len;

    FUNC3 (old_key, old_key_len, &key, &key_len);

    if (key_len >= 15 && !FUNC7 (key, "letter_priority", 15)) {
      int priority;
      long long id;
      int delay = 0;

      if (FUNC6 (key + 15, "%lld,%d,%d", &id, &priority, &delay) < 2 || priority <= 0 || priority >= MAX_PRIORITY || delay < 0 || delay > MAX_DELAY) {
        FUNC0(set, -2);
      }

      FUNC5 (&c->In, buf, size);
      buf[size] = 0;

      int result = FUNC2 (id, priority, delay, buf);
      FUNC0(set, result);
    }

    if (key_len >= 6 && !FUNC7 (key, "letter", 6)) {
      int engine_num;
      int delay = 0;
      long long task_id = 0;

      if (FUNC6 (key + 6, "%d,%d,%lld", &engine_num, &delay, &task_id) < 1 || delay < 0 || delay > MAX_DELAY) {
        FUNC0(set, -2);
      }

      FUNC5 (&c->In, buf, size);
      buf[size] = 0;

      int result = FUNC1 (delay, task_id, buf);
      FUNC0(set, result);
    }
  }

  FUNC0(set, -2);
}