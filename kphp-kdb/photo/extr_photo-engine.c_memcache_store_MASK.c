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
 int /*<<< orphan*/  buf ; 
 int FUNC2 (int,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char const*,int,char**,int*) ; 
 int /*<<< orphan*/  get ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*,int,int) ; 
 size_t mode ; 
 char** mode_names ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  set ; 
 int FUNC9 (char*,char*,int*,int*,...) ; 
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

  if (key_len >= 12 && !FUNC10 (key, "change_", 7) && !FUNC10 (key + 7, mode_names[mode], 5)) {
    int user_id, photo_id, cur;
    FUNC8 (&c->In, buf, size);

    if (FUNC9 (key + 12, "%d,%d%n", &user_id, &photo_id, &cur) < 2 || key[12 + cur]) {
      FUNC1 (set, 0);
    }

    int res = FUNC3 (user_id, photo_id, buf);
    FUNC1 (set, res);
  }

  if (key_len >= 12 && !FUNC10 (key, "change_album", 12)) {
    int user_id, album_id, cur;
    FUNC8 (&c->In, buf, size);

    if (FUNC9 (key + 12, "%d,%d%n", &user_id, &album_id, &cur) < 2 || key[12 + cur]) {
      FUNC1 (set, 0);
    }

    int res = FUNC2 (user_id, album_id, buf);
    FUNC1 (set, res);
  }

  if (key_len >= 22 && !FUNC10 (key, mode_names[mode], 5) && !FUNC10 (key + 5, "s_overview_albums", 17)) {
    int random_tag, cur = -1;
    if (FUNC9 (key + 22, "%*d,%d%n", &random_tag, &cur) != 1 || key[22 + cur]) {
      FUNC1 (get, -2);
    }

    if (FUNC7 (FUNC0 (c), size, random_tag) < 0) {
      FUNC1 (get, -2);
    }
    FUNC8 (&c->In, FUNC6 (FUNC0 (c)), size);

    FUNC1 (get, 1);
  }

  FUNC1 (set, -2);
}