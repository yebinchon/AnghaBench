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
 int /*<<< orphan*/  FUNC2 (char const*,int,char**,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char const*) ; 
 int FUNC4 (char*,char*,int*,int*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int) ; 
 int verbosity ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,int) ; 

int FUNC7 (struct connection *c, const char *old_key, int old_key_len) {
  INIT;

  if (verbosity > 1) {
    FUNC3 (stderr, "memcache_delete: key='%s'\n", old_key);
  }

  char *key;
  int key_len;

  FUNC2 (old_key, old_key_len, &key, &key_len);

  //delete("user_object{$uid},{$type}:{$obj_id}")
  if (key_len >= 9 && !FUNC5 (key, "exception", 9)) {
    int id, fid;
    if (FUNC4 (key, "exception%d_%d", &id, &fid) == 2 && FUNC1 (id, fid)) {
      FUNC6 (&c->Out, "DELETED\r\n", 9);
      FUNC0(delete, 0);
    }

    FUNC6 (&c->Out, "NOT_FOUND\r\n", 11);
    FUNC0(delete, 0);
  }

  FUNC0(delete, 0);
}