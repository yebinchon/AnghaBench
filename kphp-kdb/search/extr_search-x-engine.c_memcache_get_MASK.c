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
struct connection {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct connection*,char const*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct connection*,char const*,int,int) ; 
 int FUNC2 (struct connection*,char const*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char const*) ; 
 int FUNC4 (char const*,int) ; 
 int /*<<< orphan*/  FUNC5 (char const*,char*,int) ; 
 int FUNC6 (struct connection*,char const*,int /*<<< orphan*/ ,int) ; 
 int FUNC7 (struct connection*) ; 
 int /*<<< orphan*/  stats_buff ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC8 (char const*,char*,int) ; 
 int verbosity ; 
 int FUNC9 (struct connection*,char const*,int,int) ; 

int FUNC10 (struct connection *c, const char *key, int key_len) {
  int dog_len = FUNC4 (key, key_len);
  key += dog_len;
  key_len -= dog_len;

  if (key_len >= 5 && !FUNC8 (key, "stats", 5)) {
    int len = FUNC7 (c);
    return FUNC6 (c, key - dog_len, stats_buff, len);
  }

  if (key_len >= 8 && !FUNC8 (key, "search", 6)) {
    return FUNC2 (c, key, key_len, dog_len);
  }

  if (key_len >= 4 && (!FUNC8 (key+1, "ate", 3))) {
    FUNC1 (c, key, key_len, dog_len);
    return 0;
  }

  if (key_len >= 4 && (!FUNC8 (key, "hash", 4))) {
    FUNC0 (c, key, key_len, dog_len);
    return 0;
  }

  if (key_len == 20 && !FUNC5 (key, "worst_search_queries", 20)) {
    return FUNC9 (c, key, key_len, dog_len);
  }

  if (verbosity >= 1) {
    FUNC3 (stderr, "unknown query \"get %s\"\n", key);
  }
  return 0;
}