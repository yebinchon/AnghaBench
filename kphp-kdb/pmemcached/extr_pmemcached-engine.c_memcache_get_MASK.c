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
struct data {int data_len; char* data; int flags; } ;
struct connection {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cmd_get ; 
 int /*<<< orphan*/  disable_wildcard ; 
 struct data FUNC1 (char const*,int) ; 
 int FUNC2 (char const*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  get_hits ; 
 int /*<<< orphan*/  get_missed ; 
 int FUNC4 (struct connection*,char const*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct connection*) ; 
 scalar_t__ FUNC6 (char const*,int) ; 
 int FUNC7 (struct connection*) ; 
 scalar_t__ protected_mode ; 
 scalar_t__ return_false_if_not_found ; 
 int /*<<< orphan*/  FUNC8 (struct connection*,char const*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (struct connection*,char const*,char*,int,int) ; 
 int /*<<< orphan*/  stats_buff ; 
 int /*<<< orphan*/  stderr ; 
 int verbosity ; 

int FUNC10 (struct connection *c, const char *key, int key_len) {
  if (verbosity >= 3) {
    FUNC3 (stderr, "memcache_get: key='%s'\n", key);
  }
  if (FUNC6 (key, key_len)) {
    int stats_len = FUNC7 (c);
    FUNC8 (c, key, stats_buff, stats_len);
    return 0;
  }
  if (protected_mode) { return 0; }

  cmd_get++;
  if (!disable_wildcard && (key[key_len - 1] == '*' || key[key_len - 1] == '#')) {
    return FUNC4 (c, key, key_len);
  }

  if (FUNC2 (key, key_len, 1) == -2) {
    FUNC5 (c);
    return 0;
  }

  struct data x = FUNC1 (key, key_len);

  if (x.data_len >= 0) {
    get_hits++;
    FUNC9 (c, key, x.data, x.data_len, x.flags);
  } else {
    if (x.data_len == -1 || x.data_len == -2) { // -2 can be returned if key is deleted by time and key was not in index
      if (return_false_if_not_found) {
        FUNC9 (c, key, "b:0;", 4, 1);
      }
      get_missed++;
    } else {
      FUNC0 (0);
    }
  }

  return 0;
}