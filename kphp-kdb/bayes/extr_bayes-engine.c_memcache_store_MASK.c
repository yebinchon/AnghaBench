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
 int /*<<< orphan*/  FUNC0 (struct connection*) ; 
 int /*<<< orphan*/  INIT ; 
 int MAX_VALUE_LEN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 char* buf ; 
 int FUNC2 (char*) ; 
 int FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char const*,int,char**,int*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 
 char* FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  set ; 
 int FUNC9 (char*,char*,int*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC10 (char*,char*,int) ; 
 int verbosity ; 

int FUNC11 (struct connection *c, int op, const char *old_key, int old_key_len, int flags, int delay, int size) {
  INIT;

  if (verbosity > 1) {
    FUNC5 (stderr, "memcache_store: key='%s', key_len=%d, value_len=%d, \n", old_key, old_key_len, size);
  }

  if (size + 1 < MAX_VALUE_LEN) {
    char *key;
    int key_len;

    FUNC4 (old_key, old_key_len, &key, &key_len);

    //set("current_text{$random_tag}", "$text")
    if (key_len >= 12 && !FUNC10 (key, "current_text", 12)) {
      int random_tag;
      if (FUNC9 (key, "current_text%d", &random_tag) != 1) {
        FUNC1(set, -2);
      }

      if (verbosity > 1) {
        FUNC5 (stderr, "current_text %d\n", random_tag);
      }

      if (FUNC7 (FUNC0 (c), size, random_tag) < 0) {
        FUNC1(set, -2); // not_enough memory
      }
      FUNC8 (&c->In, FUNC6 (FUNC0 (c)), size);

      FUNC1(set, 1);
    }

    if (key_len >= 14 && !FUNC10 (key, "add_black_list", 14)) {
      FUNC8 (&c->In, buf, size);
      buf[size] = 0;

      if (verbosity > 1) {
        FUNC5 (stderr, "add_black_list %s\n", buf);
      }

      int result = FUNC2 (buf);
      FUNC1(set, result);
    }

    if (key_len >= 17 && !FUNC10 (key, "delete_black_list", 17)) {
      FUNC8 (&c->In, buf, size);
      buf[size] = 0;

      if (verbosity > 1) {
        FUNC5 (stderr, "delete_black_list %s\n", buf);
      }

      int result = FUNC3 (buf);
      FUNC1(set, result);
    }
  }

  FUNC1(set, -2);
}