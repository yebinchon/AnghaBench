#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct connection {int dummy; } ;
struct TYPE_4__ {char* text; int len; } ;
typedef  TYPE_1__ message ;

/* Variables and functions */
 int FN ; 
 int /*<<< orphan*/  GET_LOG ; 
 int /*<<< orphan*/  INIT ; 
 int MAX_HISTORY ; 
 int MAX_VALUE_LEN ; 
 TYPE_1__* FUNC0 (struct connection*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SET_LOG_VERBOSITY ; 
 int STATS_BUFF_SIZE ; 
 char* buf ; 
 double FUNC2 () ; 
 char* FUNC3 (char*,int) ; 
 char* FUNC4 (char*) ; 
 char* FUNC5 (char*) ; 
 scalar_t__ FUNC6 (int,long long,int,int,int) ; 
 int /*<<< orphan*/  FUNC7 (char const*,int,char**,int*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,char const*,double) ; 
 int /*<<< orphan*/  get ; 
 int FUNC9 (int,long long) ; 
 int FUNC10 () ; 
 char* FUNC11 (int) ; 
 char* FUNC12 () ; 
 int history_l ; 
 char** history_q ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 int history_r ; 
 int FUNC14 () ; 
 char* FUNC15 (char*,int) ; 
 int /*<<< orphan*/  FUNC16 (char*,char const*,int) ; 
 scalar_t__ FUNC17 (TYPE_1__*,int) ; 
 int FUNC18 (struct connection*,char*,int) ; 
 int /*<<< orphan*/  FUNC19 (struct connection*,char const*,char*,int) ; 
 int /*<<< orphan*/  set ; 
 int FUNC20 (char*,char*,int*,...) ; 
 char* stats_buff ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC21 (char*,char*) ; 
 int FUNC22 (char*) ; 
 int /*<<< orphan*/  FUNC23 (char*,char*,int) ; 
 scalar_t__ test_mode ; 
 int verbosity ; 
 int /*<<< orphan*/  write_only ; 

int FUNC24 (struct connection *c, const char *old_key, int old_key_len) {
  if (verbosity > 1) {
    FUNC8 (stderr, "memcache_get: key='%s', key_len=%f\n", old_key, old_key_len);
  }

  char *key;
  int key_len;

  FUNC7 (old_key, old_key_len, &key, &key_len);

  if (key_len >= 5 && !FUNC23 (key, "stats", 5)) {
    int len = FUNC14();
    int len2 = FUNC18 (c, stats_buff + len, STATS_BUFF_SIZE - len);
    FUNC19 (c, old_key, stats_buff, len + len2 - 1);

    return 0;
  }

  GET_LOG;

  SET_LOG_VERBOSITY;

  INIT;

  if (!write_only && key_len >= 6 && !FUNC23 (key, "SELECT", 6) && key_len + 1 < STATS_BUFF_SIZE) {
    FUNC16 (stats_buff, key, key_len);
    stats_buff[key_len] = 0;
    int i;
    for (i = 0; i < key_len; i++) {
      if (stats_buff[i] == (char)0xa0) {
        stats_buff[i] = ' ';
      }
    }

    double tt = 0.0;
    if (test_mode) {
      tt = -FUNC2();
    }

    FUNC13 (stats_buff);

    char *res = FUNC15 (stats_buff, key_len);

    FUNC19 (c, old_key, res, FUNC22 (res));

    if (test_mode) {
      tt += FUNC2();
      if (tt >= 0.01) {
        FUNC8 (stderr, "query %s total time : %.6lf\n\n", history_q[(history_r + MAX_HISTORY - 1) % MAX_HISTORY], tt);
      }
    }

    FUNC1(get, 0);
  }

  if (!write_only && key_len >= 6 && !FUNC23 (key, "select", 6)) {
    int random_tag;
    if (FUNC20 (key, "select%d", &random_tag) != 1) {
      FUNC1(get, 0);
    }
    message *msg = FUNC0(c);

    if (FUNC17 (msg, random_tag) < 0) {
      FUNC1(get, 0);
    }

    double tt = 0.0;
    if (test_mode) {
      tt = -FUNC2();
    }

    FUNC13 (msg->text);

    FUNC16 (buf, msg->text, msg->len + 1);

    char *res = FUNC15 (buf, msg->len);

    FUNC19 (c, old_key, res, FUNC22 (res));

    if (test_mode) {
      tt += FUNC2();
      if (tt >= 0.01) {
        FUNC8 (stderr, "query %s total time : %.6lf\n\n", stats_buff, tt);
      }
    }

    FUNC1(get, 0);
  }

  if (key_len >= 11 && !FUNC23 (key, "create_type", 11)) {
    const char *s = key + 11;
    int sn = key_len - 11;
    if (sn >= 2 && s[0] == '(' && s[sn - 1] == ')') {
      FUNC16 (buf, s + 1, sn - 2);
      buf[sn - 2] = 0;

      char *res = FUNC5 (buf);
      FUNC19 (c, old_key, res, FUNC22 (res));
    }

    FUNC1(set, 0);
  }

  if (key_len >= 9 && !FUNC23 (key, "add_field", 9)) {
    const char *s = key + 9;
    int sn = key_len - 9;
    if (sn >= 2 && s[0] == '(' && s[sn - 1] == ')') {
      FUNC16 (buf, s + 1, sn - 2);
      buf[sn - 2] = 0;

      char *res = FUNC4 (buf);
      FUNC19 (c, old_key, res, FUNC22 (res));
    }

    FUNC1(set, 0);
  }

  if (!write_only && key_len >= 9 && !FUNC23 (key, "type_size", 9)) {
    int type;
    if (FUNC20 (key + 9, "%d", &type) != 1) {
      type = -1;
    } else if (type == -1) {
      FUNC19 (c, old_key, "", 0);
      return 0;
    }

    char *res = FUNC11 (type);

    FUNC19 (c, old_key, res, FUNC22 (res));
    return 0;
  }

  if (!write_only && key_len >= 5 && !FUNC23 (key, "color", 5)) {
    int field_num;
    long long field_value;
    int cur;
    if (FUNC20 (key + 5, "%d,%lld%n", &field_num, &field_value, &cur) != 2 || field_num < 0 || field_num >= FN || cur + 5 != key_len) {
      return 0;
    }

    char *res = FUNC3 ("%d", FUNC9 (field_num, field_value));

    FUNC19 (c, old_key, res, FUNC22 (res));
    return 0;
  }

  if (key_len >= 12 && !FUNC23 (key, "change_color", 12)) {
    int field_num;
    long long field_value;
    int and_mask;
    int xor_mask;
    int cnt = 1;
    int cur;

    if (FUNC20 (key + 12, "%d,%lld,%d,%d%n#%d%n", &field_num, &field_value, &and_mask, &xor_mask, &cur, &cnt, &cur) < 4 || field_num < 0 || field_num >= FN || cur + 12 != key_len) {
      return 0;
    }

    char *res = FUNC6 (field_num, field_value, cnt, and_mask, xor_mask) ? "OK" : "NOK";

    FUNC19 (c, old_key, res, FUNC22 (res));
    return 0;
  }

  if (!write_only && key_len == 5 && !FUNC21 (key, "types")) {
    char *res = FUNC12();

    FUNC19 (c, old_key, res, FUNC22 (res));
    return 0;
  }

  if (!write_only && key_len == 4 && !FUNC21 (key, "time")) {
    int c_time = FUNC10();
    char *res = FUNC3 ("%d", c_time);

    FUNC19 (c, old_key, res, FUNC22 (res));
    return 0;
  }

  if (!write_only && key_len >= 7 && !FUNC23 (key, "history", 7)) {
    int cnt;
    if (FUNC20 (key + 7, "%d", &cnt) != 1) {
      cnt = MAX_HISTORY;
    }

    char *res = buf;
    int cur = history_r;

    while (cnt-- && cur != history_l) {
      cur--;
      if (cur == -1) {
        cur += MAX_HISTORY + 1;
      }
      int l = FUNC22 (history_q[cur]);
      if (res - buf + l + 2 >= MAX_VALUE_LEN) {
        break;
      }
      FUNC16 (res, history_q[cur], l);
      res += l;
      *res++ = '\n';
    }
    *res++ = 0;

    FUNC19 (c, old_key, buf, FUNC22 (buf));
    return 0;
  }

  return 0;
}