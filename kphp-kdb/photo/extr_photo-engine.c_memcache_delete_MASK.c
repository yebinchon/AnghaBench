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
 int /*<<< orphan*/  INIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  delete ; 
 scalar_t__ FUNC1 (int,int) ; 
 scalar_t__ FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (char const*,int,char**,int*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*) ; 
 size_t mode ; 
 char** mode_names ; 
 int FUNC5 (char*,char*,int*,int*,int*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,int) ; 

int FUNC8 (struct connection *c, const char *old_key, int old_key_len) {
  INIT;

  FUNC4 ("memcache_delete: key='%s'\n", old_key);

  char *key;
  int key_len;

  FUNC3 (old_key, old_key_len, &key, &key_len);

  if (key_len >= 5 && !FUNC6 (key, mode_names[mode], 5)) {
    int user_id, photo_id, cur;
    if (FUNC5 (key + 5, "%d,%d%n", &user_id, &photo_id, &cur) == 2 && !key[cur + 5]) {
      if (FUNC2 (user_id, photo_id)) {
        FUNC7 (&c->Out, "DELETED\r\n", 9);
      } else {
        FUNC7 (&c->Out, "NOT_FOUND\r\n", 11);
      }
    } else {
      FUNC7 (&c->Out, "NOT_FOUND\r\n", 11);
    }

    FUNC0(delete, 0);
  }

  if (key_len >= 5 && !FUNC6 (key, "album", 5)) {
    int user_id, album_id, cur;
    if (FUNC5 (key + 5, "%d,%d%n", &user_id, &album_id, &cur) == 2 && !key[cur + 5]) {
      if (FUNC1 (user_id, album_id)) {
        FUNC7 (&c->Out, "DELETED\r\n", 9);
      } else {
        FUNC7 (&c->Out, "NOT_FOUND\r\n", 11);
      }
    } else {
      FUNC7 (&c->Out, "NOT_FOUND\r\n", 11);
    }

    FUNC0(delete, 0);
  }

  FUNC7 (&c->Out, "NOT_FOUND\r\n", 11);
  FUNC0(delete, 0);
}