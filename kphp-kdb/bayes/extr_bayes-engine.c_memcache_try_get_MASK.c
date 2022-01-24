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
 int /*<<< orphan*/  FUNC0 (struct connection*) ; 
 int /*<<< orphan*/  INIT ; 
 int /*<<< orphan*/  MAX_VALUE_LEN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ STATS_BUFF_SIZE ; 
 int FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,char*) ; 
 double FUNC4 (int /*<<< orphan*/ ,int) ; 
 int FUNC5 () ; 
 int FUNC6 (char*,int /*<<< orphan*/ ) ; 
 char* buf ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (char const*,int,char**,int*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,char*,char const*,int) ; 
 int /*<<< orphan*/  get ; 
 int FUNC15 (struct connection*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 (struct connection*,char const*,char*,int) ; 
 int /*<<< orphan*/  FUNC17 (char*,char*,double) ; 
 int FUNC18 (char*,char*,int*) ; 
 char* stats_buff ; 
 int /*<<< orphan*/  stderr ; 
 int FUNC19 (char*) ; 
 int /*<<< orphan*/  FUNC20 (char*,char*,int) ; 
 int verbosity ; 

int FUNC21 (struct connection *c, const char *old_key, int old_key_len) {
  INIT;

  if (verbosity > 1) {
    FUNC14 (stderr, "memcache_get: key='%s', key_len=%d\n", old_key, old_key_len);
  }

  char *key;
  int key_len;

  FUNC13 (old_key, old_key_len, &key, &key_len);

  if (key_len >= 5 && !FUNC20 (key, "stats", 5)) {
    int len = FUNC5 ();
    int len2 = FUNC15 (c, stats_buff + len, STATS_BUFF_SIZE - len);
    FUNC16 (c, old_key, stats_buff, len + len2 - 1);

    return 0;
  }

  if (key_len >= 8 && !FUNC20 (key, "set_spam", 8)) {
    int random_tag;
    if (FUNC18 (key, "set_spam%d", &random_tag) != 1) {
      FUNC1(get, 0);
    }

    FUNC10 (FUNC0 (c), random_tag);

    FUNC1(get, 0);
  }

  if (key_len >= 7 && !FUNC20 (key, "set_ham", 7)) {
    int random_tag;
    if (FUNC18 (key, "set_ham%d", &random_tag) != 1) {
      FUNC1(get, 0);
    }

    FUNC9 (FUNC0 (c), random_tag);

    FUNC1(get, 0);
  }

  if (key_len >= 10 && !FUNC20 (key, "unset_spam", 10)) {
    int random_tag;
    if (FUNC18 (key, "unset_spam%d", &random_tag) != 1) {
      FUNC1(get, 0);
    }

    FUNC12 (FUNC0 (c), random_tag);

    FUNC1(get, 0);
  }

  if (key_len >= 9 && !FUNC20 (key, "unset_ham", 9)) {
    int random_tag;
    if (FUNC18 (key, "unset_ham%d", &random_tag) != 1) {
      FUNC1(get, 0);
    }

    FUNC11 (FUNC0 (c), random_tag);

    FUNC1(get, 0);
  }

  if (key_len >= 10 && !FUNC20 (key, "reset_spam", 10)) {
    int random_tag;
    if (FUNC18 (key, "reset_spam%d", &random_tag) != 1) {
      FUNC1(get, 0);
    }

    FUNC8 (FUNC0 (c), random_tag);

    FUNC1(get, 0);
  }

  if (key_len >= 9 && !FUNC20 (key, "reset_ham", 9)) {
    int random_tag;
    if (FUNC18 (key, "reset_ham%d", &random_tag) != 1) {
      FUNC1(get, 0);
    }

    FUNC7 (FUNC0 (c), random_tag);

    FUNC1(get, 0);
  }

  if (key_len >= 9 && !FUNC20 (key, "test_debug", 10)) {
    int random_tag;
    if (FUNC18 (key, "test_debug%d", &random_tag) != 1) {
      FUNC1(get, 0);
    }

    FUNC3 (FUNC0 (c), random_tag, buf);

    FUNC16 (c, old_key, buf, FUNC19 (buf));

    FUNC1(get, 0);
  }

  if (key_len >= 9 && !FUNC20 (key, "test_prob", 9)) {
    int random_tag;
    if (FUNC18 (key, "test_prob%d", &random_tag) != 1) {
      FUNC1(get, 0);
    }

    double res = FUNC4 (FUNC0 (c), random_tag);

    if (res >= -1e-9) {
      FUNC17 (buf, "%.6lf", res);
      FUNC16 (c, old_key, buf, FUNC19 (buf));

      FUNC1(get, 0);
    }

    int result = (int)res;
    FUNC1(get, result);
  }

  if (key_len >= 4 && !FUNC20 (key, "test", 4)) {
    int random_tag;
    if (FUNC18 (key, "test%d", &random_tag) != 1) {
      FUNC1(get, 0);
    }

    int res = FUNC2 (FUNC0 (c), random_tag);

    if (res >= 0) {
      FUNC16 (c, old_key, res ? "spam" : "ham", res ? 4 : 3);

      FUNC1(get, 0);
    }

    FUNC1(get, res);
  }

  if (key_len >= 10 && !FUNC20 (key, "black_list", 10)) {
    int res = FUNC6 (buf, MAX_VALUE_LEN);

    if (res >= 0) {
      FUNC16 (c, old_key, buf, FUNC19 (buf));
    }

    FUNC1(get, 0);
  }

  FUNC1(get, 0);
}