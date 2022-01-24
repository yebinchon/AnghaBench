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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 char* buf ; 
 int FUNC1 (char*,int) ; 
 int FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int,int,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char const*,int,char**,int*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  set ; 
 int FUNC7 (char*,char*,int*,int*,int*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,int) ; 
 int verbosity ; 

int FUNC9 (struct connection *c, int op, const char *old_key, int old_key_len, int flags, int delay, int size) {
  INIT;

  if (verbosity > 1) {
    FUNC5 (stderr, "memcache_store: key='%s', key_len=%d, value_len=%d, \n", old_key, old_key_len, size);
  }

  if (size + 1 < MAX_VALUE_LEN) {
    char *key;
    int key_len;

    FUNC4 (old_key, old_key_len, &key, &key_len);

    //set ("stat{$uid},{$type}#{$cnt}", $text)
    if (key_len >= 4 && !FUNC8 (key, "stat", 4)) {
      int uid, type, cnt;
      if (FUNC7 (key, "stat%d,%d#%d", &uid, &type, &cnt) != 3 || cnt == 0) {
        FUNC0(set, -2);
      }

      FUNC6 (&c->In, buf, size);
      buf[size] = 0;

      FUNC3 (uid, type, cnt, buf, size);

      FUNC0(set, 1);
    }

    if (key_len >= 14 && !FUNC8 (key, "add_black_list", 14)) {
      FUNC6 (&c->In, buf, size);
      buf[size] = 0;

      if (verbosity > 1) {
        FUNC5 (stderr, "add_black_list %s\n", buf);
      }

      int result = FUNC1 (buf, size);
      FUNC0(set, result);
    }

    if (key_len >= 17 && !FUNC8 (key, "delete_black_list", 17)) {
      FUNC6 (&c->In, buf, size);
      buf[size] = 0;

      if (verbosity > 1) {
        FUNC5 (stderr, "delete_black_list %s\n", buf);
      }

      int result = FUNC2 (buf, size);
      FUNC0(set, result);
    }
  }

  FUNC0(set, -2);
}