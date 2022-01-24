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
struct TYPE_4__ {char* name; int ref_cnt; int ev_first; int keys_cnt; int subscr_cnt; } ;
typedef  TYPE_1__ queue ;
typedef  int /*<<< orphan*/  qkey ;
typedef  int ll ;

/* Variables and functions */
 int /*<<< orphan*/  GET_LOG ; 
 int KEY_LEN ; 
 int /*<<< orphan*/  LOG_HISTORY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  Q_DEF ; 
 int /*<<< orphan*/  SET_LOG_VERBOSITY ; 
 int STATS_BUFF_SIZE ; 
 char* buf ; 
 int /*<<< orphan*/  cmd_get ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char const*,int,char**,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char const*,int) ; 
 int /*<<< orphan*/  get ; 
 char* FUNC4 (int /*<<< orphan*/ *) ; 
 char* FUNC5 (int,long long,int,int) ; 
 TYPE_1__* FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,int*) ; 
 TYPE_1__* FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int,int*) ; 
 char* FUNC10 (char*,int,long long,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char* FUNC11 (char*,int,long long,int) ; 
 int /*<<< orphan*/  FUNC12 (char*,char*,int) ; 
 double FUNC13 () ; 
 int FUNC14 (struct connection*,char*,int) ; 
 int /*<<< orphan*/  query ; 
 int FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 (struct connection*,char const*,char*,int) ; 
 int /*<<< orphan*/  FUNC17 (char*,char*,...) ; 
 int FUNC18 (char*,char*,int*,...) ; 
 char* stats_buff ; 
 int /*<<< orphan*/  stderr ; 
 int FUNC19 (char*) ; 
 int /*<<< orphan*/  FUNC20 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC21 (int) ; 
 int /*<<< orphan*/ * FUNC22 (char*,int,long long,int,int /*<<< orphan*/ ,char*) ; 
 int verbosity ; 

int FUNC23 (struct connection *c, const char *old_key, int old_key_len) {
  if (verbosity > 1) {
    FUNC3 (stderr, "memcache_get: key='%s', key_len=%d\n", old_key, old_key_len);
  }
  FUNC1 (LOG_HISTORY, 1, "memcache_get: key='%s', key_len=%d\n", old_key, old_key_len);
  FUNC17 (query, "key='%s', key_len=%d", old_key, old_key_len);

  char *key;
  int key_len;

  FUNC2 (old_key, old_key_len, &key, &key_len);

  if (key_len >= 5 && !FUNC20 (key, "stats", 5)) {
    int len = FUNC15();
    int len2 = FUNC14 (c, stats_buff + len, STATS_BUFF_SIZE - len);

    FUNC16 (c, old_key, stats_buff, len + len2 - 1);
    return 0;
  }

  GET_LOG;

  SET_LOG_VERBOSITY;

  double cmd_time = -FUNC13();
  cmd_get++;

  if (key_len >= 13 && !FUNC20 (key, "timestamp_key", 13)) {
    int id, timeout, st;
    long long ip;
    if (FUNC18 (key, "timestamp_key%d,%lld,%d%n", &id, &ip, &timeout, &st) == 3 && key[st] == '(' && key[key_len - 1] == ')' && key_len - st - 2 < STATS_BUFF_SIZE) {
      char *s = stats_buff;
      int len = key_len - st - 2;
      FUNC12 (s, key + st + 1, len);
      s[len] = 0;
      FUNC1 (LOG_HISTORY, 1, "GET KEY (%s) id = %d, ip = %lld\n", s, id, ip);
      s = FUNC10 (s, id, ip, timeout, NULL, Q_DEF);
      FUNC16 (c, old_key, s, FUNC19 (s));
    }

    FUNC0(get, 0);
  }

  if (key_len >= 5 && !FUNC20 (key, "alias", 5)) {
    int st = 5, is_news = 0;
    if (key_len >= 10 && !FUNC20 (key + 5, "_news", 5)) {
      st += 5;
      is_news = 1;
    }
    if (key[st] == '(' && key[key_len - 1] == ')' && key_len - st - 2 < STATS_BUFF_SIZE) {
      char *s = stats_buff;
      int len = key_len - st - 2;
      FUNC12 (s, key + st + 1, len);
      s[len] = 0;
      FUNC1 (LOG_HISTORY, 1, "GET ALIAS (%s)\n", s);

      ll res;
      if (is_news) {
        ll id;
        if (FUNC18 (s, "%lld", &id) != 1 || !FUNC9 (id, &res)) {//TODO get alias_news(1qwerty)
          FUNC0(get, 0);
        }
      } else {
        if (!is_news && !FUNC7 (s, &res)) {
          FUNC0(get, 0);
        }
      }

      FUNC17 (s, "%lld", res);

      FUNC16 (c, old_key, s, FUNC19 (s));
    }

    FUNC0(get, 0);
  }

  if (key_len >= 14 && !FUNC20 (key, "qname_by_alias", 14)) {
    ll id;
    int st;
    if (FUNC18 (key, "qname_by_alias%lld%n", &id, &st) == 1 && key[st] == 0) {
      queue *q = FUNC8 (id);
      if (q != NULL) {
        FUNC17 (buf, "%s : ref_cnt = %d, ev_first = %p, keys_cnt = %d, subscr_cnt = %d", q->name, q->ref_cnt, q->ev_first, q->keys_cnt, q->subscr_cnt);
        FUNC16 (c, old_key, buf, FUNC19 (buf));
      }
    }

    FUNC0(get, 0);
  }

  if (key_len >= 10 && !FUNC20 (key, "queue_info", 10)) {
    if (key[10] == '(' && key[key_len - 1] == ')') {
      key[key_len - 1] = 0;
      char *qname = key + 11;
      queue *q = FUNC6 (qname, 0);
      if (q != NULL) {
        FUNC17 (buf,
          "name\t%s\n"
          "ref_cnt\t%d\n"
          "key_cnt\t%d\n"
          "subscr_cnt\t%d\n"
          "ev_frist\t%p\n"
          , q->name, q->ref_cnt, q->keys_cnt, q->subscr_cnt, q->ev_first);
        FUNC16 (c, old_key, buf, FUNC19 (buf));
      }
    }
    FUNC0 (get, 0);
  }

  if (key_len >= 12 && !FUNC20 (key, "watchcat_key", 12)) {
    int id, timeout, st;
    long long ip;
    if (FUNC18 (key, "watchcat_key%d,%lld,%d%n", &id, &ip, &timeout, &st) == 3 && key[st] == '(' && key[key_len - 1] == ')' && key_len - st - 2 < STATS_BUFF_SIZE) {
      char *s = stats_buff;
      int len = key_len - st - 2;
      FUNC12 (s, key + st + 1, len);
      s[len] = 0;

      char *tmp = s;
      while (*tmp) {
        if (*tmp == '?') {
          *tmp = 0x1f;
        }
        tmp++;
      }

      s = FUNC11 (s, id, ip, timeout);
      if (s != NULL) {
        FUNC16 (c, old_key, s, FUNC19 (s));
      }
    }

    FUNC0(get, 0);
  }

  if (key_len >= 8 && !FUNC20 (key, "news_key", 8)) {
    int id, timeout;
    long long ip;
    ll uid;
    if (FUNC18 (key, "news_key%d,%lld,%d(%lld)", &id, &ip, &timeout, &uid) == 4) {
      char *s;
      FUNC1 (LOG_HISTORY, 1, "GET NEWS KEY (%lld) id = %d, ip = %lld\n", uid, id, ip);
      s = FUNC5 (id, ip, timeout, uid);
      if (s != NULL) {
        FUNC16 (c, old_key, s, FUNC19 (s));
      }
    }

    FUNC0(get, 0);
  }

  if (key_len >= 5 && !FUNC20 (key, "queue", 5)) {
    int id, ts, st;
    long long ip;
    if (FUNC18 (key, "queue%d,%lld,%d%n", &id, &ip, &ts, &st) == 3 && key[st] == '(' && key[key_len - 1] == ')' && key_len - st - 2 < STATS_BUFF_SIZE) {
      char *s = stats_buff, *ans = "{\"failed\":2}";
      int len = key_len - st - 2;

      if (len == KEY_LEN) {
        FUNC12 (s, key + st + 1, len);
        s[len] = 0;

        qkey *k;

        //fprintf (stderr, "mc validate : %s %d %lld %d\n", s, id, ip, ts);

        char err;
        if ((k = FUNC22 (s, id, ip, ts, 0, &err)) != NULL) {
          ans = FUNC4 (k);
        }
      }

      FUNC16 (c, old_key, ans, FUNC19 (ans));
    }

    FUNC0(get, 0);
  }

  if (key_len >= 10 && !FUNC20 (key, "upd_secret", 10)) {
    int id;
    if (FUNC18 (key, "upd_secret%d", &id) == 1) {
      FUNC21 (id);
    }
    FUNC16 (c, old_key, "OK", 2);

    FUNC0(get, 0);
  }


  FUNC0(get, 0);
}