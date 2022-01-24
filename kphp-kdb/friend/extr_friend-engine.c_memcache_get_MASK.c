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
 int /*<<< orphan*/  FreeCnt ; 
 int MAX_RECORD_WORDS ; 
 int /*<<< orphan*/ * NewAllocations ; 
 int /*<<< orphan*/  SplitBlocks ; 
 int /*<<< orphan*/  UsedCnt ; 
 int binlog_disabled ; 
 int /*<<< orphan*/  FUNC0 (struct connection*,char const*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct connection*,char const*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct connection*,char const*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct connection*,char const*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct connection*,char const*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct connection*,char const*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct connection*,char const*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct connection*,char const*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct connection*,char const*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  FUNC10 (struct connection*) ; 
 int /*<<< orphan*/  FUNC11 (struct connection*) ; 
 int /*<<< orphan*/  FUNC12 (struct connection*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct connection*,char const*,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ reverse_friends_mode ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC15 () ; 
 int /*<<< orphan*/  stats_buff ; 
 int /*<<< orphan*/  stderr ; 
 int FUNC16 () ; 
 int /*<<< orphan*/  FUNC17 (char const*,char*,int) ; 
 int verbosity ; 

int FUNC18 (struct connection *c, const char *key, int key_len) {
  if (verbosity > 1) {
    FUNC9 (stderr, "memcache_get: key='%s'\n", key);
  }

  if (key_len >= 5 && !FUNC17 (key, "stats", 5)) {
    FUNC12 (c, key, stats_buff, FUNC11 (c));
    return 0;
  }

  if (key_len == 18 && !FUNC17 (key, "start_write_binlog", 18)) {
    FUNC12 (c, key, stats_buff, FUNC14 (stats_buff, "%d", FUNC15()));
    return 0;
  }

  if (key_len == 17 && !FUNC17 (key, "stop_write_binlog", 17)) {
    FUNC12 (c, key, stats_buff, FUNC14 (stats_buff, "%d", FUNC16()));
    return 0;
  }

  if (key_len == 15 && !FUNC17 (key, "binlog_disabled", 15)) {
    FUNC12 (c, key, stats_buff, FUNC14 (stats_buff, "%d", binlog_disabled));
    return 0;
  }

  if (key_len >= 16 && !FUNC17 (key, "free_block_stats", 16)) {
    FUNC13 (c, key, key_len, MAX_RECORD_WORDS, 0, FreeCnt, MAX_RECORD_WORDS);
    return 0;
  }

  if (key_len >= 16 && !FUNC17 (key, "used_block_stats", 16)) {
    FUNC13 (c, key, key_len, MAX_RECORD_WORDS, 0, UsedCnt, MAX_RECORD_WORDS);
    return 0;
  }

  if (key_len >= 16 && !FUNC17 (key, "allocation_stats", 16)) {
    FUNC13 (c, key, key_len, MAX_RECORD_WORDS, 0, NewAllocations[0], MAX_RECORD_WORDS * 4);
    return 0;
  }

  if (key_len >= 17 && !FUNC17 (key, "split_block_stats", 17)) {
    FUNC13 (c, key, key_len, MAX_RECORD_WORDS, 0, SplitBlocks, MAX_RECORD_WORDS);
    return 0;
  }

  if (reverse_friends_mode) {
    if (key_len >= 19 && (!FUNC17 (key, "common_friends_num", 18) || !FUNC17 (key, "%common_friends_num", 19))) {
      FUNC2 (c, key, key_len);
      FUNC10 (c);
      return 0;
    }
    if (key_len >= 15 && (!FUNC17 (key, "common_friends", 14) || !FUNC17 (key, "%common_friends", 15))) {
      FUNC1 (c, key, key_len);
      FUNC10 (c);
      return 0;
    }
    return 0;
  }

  if (key_len >= 7 && !FUNC17 (key, "friends", 7)) {
    FUNC3 (c, key, key_len, 7);
    return 0;
  }

  if (key_len >= 9 && !FUNC17 (key, "friendcnt", 9)) {
    FUNC3 (c, key, key_len, 9);
    return 0;
  }

  if (key_len >= 9 && !FUNC17 (key, "friendreq", 9)) {
    FUNC5 (c, key, key_len);
    return 0;
  }

  if (key_len >= 9 && !FUNC17 (key, "requests", 8)) {
    FUNC8 (c, key, key_len);
    return 0;
  }

  if (key_len >= 7 && !FUNC17 (key, "friend", 6)) {
    FUNC4 (c, key, key_len);
    return 0;
  }

  if (key_len >= 14 && !FUNC17 (key, "recent_friends", 14)) {
    FUNC7 (c, key, key_len);
    return 0;
  }

  if (key_len >= 1 && *key >= '1' && *key <= '9') {
    FUNC0 (c, key, key_len);
    return 0;
  }

  if (key_len >= 7 && !FUNC17 (key, "privacy", 7)) {
    FUNC6 (c, key, key_len);
    return 0;
  }

  return 0;
}