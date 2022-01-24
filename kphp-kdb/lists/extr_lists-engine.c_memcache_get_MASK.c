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
 int /*<<< orphan*/  FUNC0 (char const*,int,char**,int*) ; 
 int /*<<< orphan*/  FUNC1 (struct connection*,char*,int,char const*) ; 
 int /*<<< orphan*/  FUNC2 (struct connection*,char*,int,char const*) ; 
 int /*<<< orphan*/  FUNC3 (struct connection*,char*,int,char const*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct connection*,char*,int,char const*) ; 
 int /*<<< orphan*/  FUNC5 (struct connection*,char*,int,char const*) ; 
 int /*<<< orphan*/  FUNC6 (struct connection*,char*,int,char const*) ; 
 int /*<<< orphan*/  FUNC7 (struct connection*,char*,int,char const*) ; 
 int /*<<< orphan*/  FUNC8 (struct connection*,char*,int,char const*) ; 
 int /*<<< orphan*/  FUNC9 (struct connection*,char*,int,int,char const*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct connection*,char*,int,char const*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct connection*,char*,int,char const*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct connection*,char*,int,char const*) ; 
 int /*<<< orphan*/  FUNC13 (struct connection*,char*,int,char const*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,char*,char const*) ; 
 int FUNC15 (struct connection*) ; 
 int /*<<< orphan*/  FUNC16 (struct connection*,char const*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC17 (struct connection*,char const*,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  stats_buff ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC18 (char*,char*,int) ; 
 int verbosity ; 

int FUNC19 (struct connection *c, const char *key, int key_len) {
  if (verbosity > 1) {
    FUNC14 (stderr, "memcache_get: key='%s'\n", key);
  }

  char *new_key;
  int new_len;

  FUNC0 (key, key_len, &new_key, &new_len);

  if (new_len >= 9 && !FUNC18 (new_key, "datedistr", 9)) {
    FUNC3 (c, new_key, new_len, key, key_len);
    return 0;
  }

  if (new_len >= 9 && !FUNC18 (new_key, "intersect", 9)) {
    FUNC9 (c, new_key, new_len, 9, key, key_len);
    return 0;
  }

  if (new_len >= 8 && !FUNC18 (new_key, "subtract", 8)) {
    FUNC9 (c, new_key, new_len, 8, key, key_len);
    return 0;
  }

  if (new_len >= 7 && !FUNC18 (new_key, "sumlist", 7)) {
    FUNC9 (c, new_key, new_len, 7, key, key_len);
    return 0;
  }

  if (new_len >= 4 && !FUNC18 (new_key, "list", 4)) {
    FUNC10 (c, new_key, new_len, key, key_len);
    return 0;
  }

  if (new_len >= 10 && !FUNC18 (new_key, "sortedlist", 10)) {
    FUNC11 (c, new_key, new_len, key, key_len);
    return 0;
  }

  if (new_len >= 9 && !FUNC18 (new_key, "entry_pos", 9)) {
    FUNC5 (c, new_key, new_len, key);
    return 0;
  }

  if (new_len >= 17 && !FUNC18 (new_key, "entry_sublist_pos", 17)) {
    FUNC6 (c, new_key, new_len, key);
    return 0;
  }

  if (new_len >= 5 && !FUNC18 (new_key, "entry", 5)) {
    FUNC4 (c, new_key, new_len, key);
    return 0;
  }

  if (new_len >= 5 && !FUNC18 (new_key, "flags", 5)) {
    FUNC7 (c, new_key, new_len, key);
    return 0;
  }

  if (new_len >= 5 && !FUNC18 (new_key, "value", 5)) {
    FUNC13 (c, new_key, new_len, key);
    return 0;
  }

  if (new_len >= 4 && !FUNC18 (new_key, "text", 4)) {
    FUNC12 (c, new_key, new_len, key);
    return 0;
  }

  if (new_len >= 6 && !FUNC18 (new_key, "counts", 6)) {
    FUNC2 (c, new_key, new_len, key);
    return 0;
  }

  if (new_len >= 5 && !FUNC18 (new_key, "count", 5)) {
    FUNC1 (c, new_key, new_len, key);
    return 0;
  }

  if (new_len >= 10 && !FUNC18 (new_key, "incr_value", 10)) {
    FUNC8 (c, new_key, new_len, key);
  }

  if (new_len >= 16 && !FUNC18 (new_key, "free_block_stats", 16)) {
    FUNC17 (c, key, key_len, MAX_RECORD_WORDS, 0, FreeCnt, MAX_RECORD_WORDS);
    return 0;
  }

  if (new_len >= 16 && !FUNC18 (new_key, "used_block_stats", 16)) {
    FUNC17 (c, key, key_len, MAX_RECORD_WORDS, 0, UsedCnt, MAX_RECORD_WORDS);
    return 0;
  }

  if (new_len >= 16 && !FUNC18 (new_key, "allocation_stats", 16)) {
    FUNC17 (c, key, key_len, MAX_RECORD_WORDS, 0, NewAllocations[0], MAX_RECORD_WORDS * 4);
    return 0;
  }

  if (new_len >= 17 && !FUNC18 (new_key, "split_block_stats", 17)) {
    FUNC17 (c, key, key_len, MAX_RECORD_WORDS, 0, SplitBlocks, MAX_RECORD_WORDS);
    return 0;
  }

  if (new_len >= 5 && !FUNC18 (new_key, "stats", 5)) {
    int len = FUNC15 (c);
    FUNC16 (c, key, stats_buff, len);
    return 0;
  }

  return 0;
}