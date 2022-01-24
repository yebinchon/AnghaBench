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
typedef  void counter ;
struct connection {int /*<<< orphan*/  Out; } ;

/* Variables and functions */
 int /*<<< orphan*/  FreeCnt ; 
 int MAX_RECORD_WORDS ; 
 int /*<<< orphan*/ * NewAllocations ; 
 int Q_raw ; 
 int /*<<< orphan*/  SplitBlocks ; 
 int /*<<< orphan*/  UsedCnt ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (void*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC3 (char const*,int) ; 
 int FUNC4 (long long,int /*<<< orphan*/ ) ; 
 int FUNC5 (long long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC7 (char const*,int) ; 
 int FUNC8 (char*,long long,int) ; 
 int FUNC9 (char*,long long) ; 
 int FUNC10 (long long) ; 
 int FUNC11 (long long,int) ; 
 int FUNC12 (long long) ; 
 int FUNC13 (long long,int) ; 
 void* FUNC14 (int,int,int) ; 
 int FUNC15 (char*,long long) ; 
 int FUNC16 (char*,long long) ; 
 int FUNC17 (long long) ; 
 int FUNC18 (struct connection*) ; 
 int FUNC19 (struct connection*) ; 
 int /*<<< orphan*/  FUNC20 (char const*,long long*,int*) ; 
 int /*<<< orphan*/  FUNC21 (struct connection*,char const*,char*,int) ; 
 int /*<<< orphan*/  FUNC22 (struct connection*,char const*,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC23 (long long,int,int /*<<< orphan*/ ) ; 
 int FUNC24 (char*,char*,...) ; 
 int FUNC25 (char const*,char*,...) ; 
 char* stats_buff ; 
 int FUNC26 (struct connection*) ; 
 int /*<<< orphan*/  stderr ; 
 int FUNC27 (char const*) ; 
 int /*<<< orphan*/  FUNC28 (char const*,char*,int) ; 
 long long FUNC29 (char const*,char**,int) ; 
 int verbosity ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ *,char*,int) ; 

int FUNC31 (struct connection *c, const char *key, int len) {
  char *ptr;
  //char timezone[32];
  long long cnt_id;
  if (verbosity >= 4) {
    FUNC6 (stderr, "memcache_get (key = \"");
    FUNC3 (key, len);
    FUNC6 (stderr, "\")\n");
  }
  int dog_len = FUNC7 (key, len);
  key += dog_len;
  len -= dog_len;

  Q_raw = 0;
  if (len > 0 && *key == '%') {
    dog_len ++;
    key ++;
    len --;
    Q_raw = 1;
  }


  if (len > 5 && !FUNC28 (key, "views", 5)) {
    int ver;
    if (!FUNC20 (key + 5, &cnt_id, &ver)) {
      FUNC2 ("get", "couldn't parse count_id&version", key, len);
      return FUNC19 (c);
    }
    //int res = get_counter_views(cnt_d, ver); TODO!!!
    int res = (ver == -1) ? FUNC10 (cnt_id) : FUNC11 (cnt_id,ver);
    if (res == -2) {
      return FUNC18 (c);
    }
    if (res >= 0) {
      //int return_one_key (struct connection *c, const char *key, char *val, int vlen) {
      if (!Q_raw) {
        FUNC21 (c, key - dog_len, stats_buff, FUNC24 (stats_buff, "%d", res));
      } else {
        *(int *)stats_buff = res;
        FUNC21 (c, key - dog_len, stats_buff, sizeof (int));
      }
    }
    return 0;
  }

  if (len > 8 && !FUNC28 (key, "visitors", 8)) {
    int ver;
    if (!FUNC20 (key + 8, &cnt_id, &ver)) {
      FUNC2 ("get","couldn't parse count_id&version",key, len);
      return FUNC19(c);
    }
    //int res = get_counter_visitors(cnt_id, ver); TODO !!!
    int res = (ver == -1) ? FUNC12 (cnt_id) : FUNC13 (cnt_id, ver);
    if (res == -2) {
      return FUNC18 (c);
    }
    if (res >= 0) {
      //int return_one_key (struct connection *c, const char *key, char *val, int vlen) {
      if (!Q_raw) {
        FUNC21 (c, key - dog_len, stats_buff, FUNC24 (stats_buff, "%d", res));
      } else {
        *(int *)stats_buff = res;
        FUNC21 (c, key - dog_len, stats_buff, sizeof (int));
      }
    }
    return 0;
  }

  if (len > 14 && !FUNC28 (key, "enable_counter", 14)) {
    cnt_id = FUNC29 (key + 14, &ptr, 10);
    if (ptr > key + 14 && !*ptr) {
      int res = FUNC5 (cnt_id, 0);
      if (res >= 0) {
      if (!Q_raw) {
        FUNC21 (c, key - dog_len, stats_buff, FUNC24 (stats_buff, "%d", res));
      } else {
        *(int *)stats_buff = res;
        FUNC21 (c, key - dog_len, stats_buff, sizeof (int));
      }
      }
      return 0;
    }
  }

  if (len > 15 && !FUNC28 (key, "disable_counter", 15)) {
    cnt_id = FUNC29 (key + 15, &ptr, 10);
    if (ptr > key + 15 && !*ptr) {
      int res = FUNC4 (cnt_id, 0);
      if (!Q_raw) {
        FUNC21 (c, key - dog_len, stats_buff, FUNC24 (stats_buff, "%d", res));
      } else {
        *(int *)stats_buff = res;
        FUNC21 (c, key - dog_len, stats_buff, sizeof (int));
      }
      return 0;
    }
  }

  if (len > 12 && !FUNC28(key, "set_timezone", 12)) {
    int tz = 0;
    //if (2 == sscanf(key+12,"%d#%31s",&cnt_id,timezone)) {
    if (2 == FUNC25(key + 12,"%lld#%d", &cnt_id, &tz)) {
      tz = tz + 12 + 4;
      if (tz < 0) {
        return 0;
      }
      int res = FUNC23 (cnt_id, tz, 0);
      if (!Q_raw) {
        FUNC21 (c, key - dog_len, stats_buff, FUNC24 (stats_buff, "%d", res));
      } else {
        *(int *)stats_buff = res;
        FUNC21 (c, key - dog_len, stats_buff, sizeof (int));
      }
      return 0;
    }
  }

  if (len > 8 && !FUNC28(key, "timezone", 8)) {
    if (1 == FUNC25(key + 8, "%lld", &cnt_id)) {
      int res = FUNC17 (cnt_id);
      if (!Q_raw) {
        FUNC21 (c, key - dog_len, stats_buff, FUNC24 (stats_buff, "%d", res));
      } else {
        *(int *)stats_buff = res;
        FUNC21 (c, key - dog_len, stats_buff, sizeof (int));
      }
      return 0;
    }
  }


  if (len > 7 && !FUNC28 (key, "counter", 7)) {
    int ver = 0;
    if (FUNC25 (key, "counter%lld@%d", &cnt_id, &ver) >= 1) {
      int to_serialize = key[FUNC27(key) - 1] != '?';
      if (verbosity >= 4) {
        FUNC6(stderr, "cnt_id = %lld, ver = %d\n", cnt_id, ver);
      }
      int res = FUNC8 (stats_buff, cnt_id, ver);
      if (res == -2) {
        return FUNC18 (c);
      }
      if (res > 0) {
        if (to_serialize && !Q_raw) {
          FUNC30 (&c->Out, stats_buff+res, FUNC24 (stats_buff+res, "VALUE %s 1 %d\r\n", key - dog_len, res));
        } else {
          FUNC30 (&c->Out, stats_buff+res, FUNC24 (stats_buff+res, "VALUE %s 0 %d\r\n", key - dog_len, res));
        }
        FUNC30 (&c->Out, stats_buff, res);
        FUNC30 (&c->Out, "\r\n", 2);
      }
      return 0;
    }
  }

  if (len > 16 && !FUNC28 (key, "monthly_visitors", 16)) {
    cnt_id = 0;
    if (FUNC25 (key, "monthly_visitors%lld", &cnt_id) >= 1) {
      int res = FUNC16 (stats_buff, cnt_id);
      if (res == -2) {
        return FUNC18 (c);
      }
      if (res >= 0) {
        FUNC21 (c, key - dog_len, stats_buff, res);
      }
      return 0;
    }
  }

  if (len > 13 && !FUNC28 (key, "monthly_views", 13)) {
    cnt_id = 0;
    if (FUNC25 (key, "monthly_views%lld", &cnt_id) >= 1) {
      int res = FUNC15 (stats_buff, cnt_id);
      if (res == -2) {
        return FUNC18 (c);
      }
      if (res >= 0) {
        FUNC21 (c, key - dog_len, stats_buff, res);
      }
      return 0;
    }
  }

  if (len > 12 && !FUNC28 (key, "counters_sum", 12)) {
    int start_id = 0, finish_id = 0, id = 0;
    int to_serialize = key[FUNC27(key) - 1] != '?';
    if (FUNC25 (key, "counters_sum%d_%d_%d", &id, &start_id, &finish_id)) {
      struct counter *C = FUNC14 (id, start_id, finish_id);
      if (C == (void *)-2l) { 
        return FUNC18 (c);
      }
      if (C) {
        int res = FUNC1 (C, stats_buff);
        FUNC0 (res >= 0);
        if (to_serialize && !Q_raw) {
          FUNC30 (&c->Out, stats_buff+res, FUNC24 (stats_buff+res, "VALUE %s 1 %d\r\n", key - dog_len, res));
        } else {
          FUNC30 (&c->Out, stats_buff+res, FUNC24 (stats_buff+res, "VALUE %s 0 %d\r\n", key - dog_len, res));
        }
        FUNC30 (&c->Out, stats_buff, res);
        FUNC30 (&c->Out, "\r\n", 2);
      }
    }
  }
  /*
  if (len > 7 && !strncmp (key, "counter", 7)) {
    int cnt_id, subcnt_id = -1, ver = 0;
    if (sscanf (key, "counter%d:%d@%d", &cnt_id, &subcnt_id, &ver) >= 2) {
      //int res = get_counter_serialized (stats_buff, cnt_id, subcnt_id, ver); TODO !!!
      int res = get_counter_serialized (stats_buff, cnt_id, ver);
      if (res > 0) {
        write_out (&c->Out, stats_buff+res, sprintf (stats_buff+res, "VALUE %s 1 %d\r\n", key, res));
        write_out (&c->Out, stats_buff, res);
        write_out (&c->Out, "\r\n", 2);
      }
      return 0;
    }
    if (sscanf (key, "counter%d@%d", &cnt_id, &ver) == 2) {
      //int res = get_counter_serialized (stats_buff, cnt_id, -1, ver); TODO !!!
      int res = get_counter_serialized (stats_buff, cnt_id, ver);
      if (res > 0) {
        write_out (&c->Out, stats_buff+res, sprintf (stats_buff+res, "VALUE %s 1 %d\r\n", key, res));
        write_out (&c->Out, stats_buff, res);
        write_out (&c->Out, "\r\n", 2);
      }
      return 0;
    }
  }
  */

  if (len > 8 && !FUNC28 (key, "versions", 8)) {
    cnt_id = FUNC29 (key + 8, &ptr, 10);
    if (ptr > key+8 && !*ptr) {
      int res = FUNC9 (stats_buff, cnt_id);
      if (res == -2) {
        return FUNC18 (c);
      }
      if (res > 0) {
        FUNC30 (&c->Out, stats_buff + res, FUNC24 (stats_buff + res, "VALUE %s 0 %d\r\n", key - dog_len, res));
        FUNC30 (&c->Out, stats_buff, res);
        FUNC30 (&c->Out, "\r\n", 2);
      }
      return 0;
    }
  }

  if (len >= 16 && !FUNC28 (key, "free_block_stats", 16)) {
    FUNC22 (c, key - dog_len, len + dog_len, MAX_RECORD_WORDS, 0, FreeCnt, MAX_RECORD_WORDS);
    return 0;
  }

  if (len >= 16 && !FUNC28 (key, "used_block_stats", 16)) {
    FUNC22 (c, key - dog_len, len + dog_len, MAX_RECORD_WORDS, 0, UsedCnt, MAX_RECORD_WORDS);
    return 0;
  }

  if (len >= 16 && !FUNC28 (key, "allocation_stats", 16)) {
    FUNC22 (c, key - dog_len, len + dog_len, MAX_RECORD_WORDS, 0, NewAllocations[0], MAX_RECORD_WORDS * 4);
    return 0;
  }

  if (len >= 17 && !FUNC28 (key, "split_block_stats", 17)) {
    FUNC22 (c, key - dog_len, len + dog_len, MAX_RECORD_WORDS, 0, SplitBlocks, MAX_RECORD_WORDS);
    return 0;
  }

  if (len >= 5 && !FUNC28 (key, "stats", 5)) {
    FUNC21 (c, key - dog_len, stats_buff, FUNC26 (c));
    return 0;
  }

  return 0;
}