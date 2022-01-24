#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ disabled; } ;
typedef  TYPE_1__ volume_t ;
struct connection {int /*<<< orphan*/  Out; } ;
typedef  int /*<<< orphan*/  path ;

/* Variables and functions */
 int STORAGE_ERR_SCANDIR_MULTIPLE ; 
 int STORAGE_ERR_SIZE_MISMATCH ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ binlog_disabled ; 
 int /*<<< orphan*/  FUNC1 (struct connection*,int /*<<< orphan*/ ,TYPE_1__*,char const*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ct_unknown ; 
 scalar_t__ force_write_index ; 
 int FUNC2 () ; 
 int FUNC3 (char const*,int) ; 
 int FUNC4 (char const*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  get_file_queries ; 
 int /*<<< orphan*/  get_hide_queries ; 
 int /*<<< orphan*/  get_misses ; 
 int /*<<< orphan*/  get_queries ; 
 TYPE_1__* FUNC6 (long long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  get_volume_misses ; 
 int FUNC7 (char*,long long) ; 
 int FUNC8 (char*,long long) ; 
 int /*<<< orphan*/  FUNC9 (char const*,char*,int) ; 
 int FUNC10 (struct connection*,char const*,char*,int) ; 
 int FUNC11 (char*,int,char*,int) ; 
 int FUNC12 (char*,char*,...) ; 
 int FUNC13 (char const*,char*,long long*,...) ; 
 char* stats_buff ; 
 int FUNC14 (TYPE_1__*,int) ; 
 int FUNC15 (TYPE_1__*,int) ; 
 int FUNC16 (struct connection*) ; 
 int FUNC17 (int) ; 
 int FUNC18 (TYPE_1__*,double,long long) ; 
 int FUNC19 (char*) ; 
 int /*<<< orphan*/  FUNC20 (char const*,char*,int) ; 
 char* value_buff ; 
 int /*<<< orphan*/  FUNC21 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,char*,int) ; 

int FUNC23 (struct connection *c, const char *key, int key_len) {
  FUNC21 (3, "memcache_get (c = %p, %.*s)\n", c, key_len, key);
  get_queries++;
  int dog_len = FUNC3 (key, key_len);
  key += dog_len;
  key_len -= dog_len;

  long long volume_id;
  char path[1024];
  int has_path = 0;
  int hide_local_id;

  if (key_len >= 4 && !FUNC9 (key, "file", 4) && FUNC13 (key+4, "%lld,%1023s", &volume_id, path) == 2) {
    get_file_queries++;
    has_path = 1;
  }

  if (key_len >= 4 && !FUNC9 (key, "hide", 4) && FUNC13 (key+4, "%lld,%x", &volume_id, &hide_local_id) == 2) {
    FUNC21 (4, "HIDE\n");
    get_hide_queries++;
    FUNC0 (FUNC11 (path, sizeof (path), "**hide doc**%x", hide_local_id) < sizeof (path));
    has_path = 1;
  }

  if (has_path) {
    FUNC21 (4, "path: %s\n", path);
    volume_t *V = FUNC6 (volume_id, 0);
    if (V == NULL) {
      get_volume_misses++;
      get_misses++;
      return 0;
    }

    if (V->disabled || binlog_disabled || force_write_index) {
      return 0;
    }
    FUNC1 (c, 0, V, key + dog_len, path, NULL, 0, ct_unknown);
    return 0;
  }

  int l;
  double percent = 0.0;
  long long file_size;
  if (key_len >= 10 && !FUNC9 (key, "check_file", 10) && (l = FUNC13 (key + 10, "%lld,%lld,%lf", &volume_id, &file_size, &percent)) >= 2) {
    if (l == 2) {
      percent = 99.0;
    }
    if (percent < 0.0) {
      percent = 0.0;
    }
    if (percent > 100.0) {
      percent = 100.0;
    }
    volume_t *V = FUNC6 (volume_id, 0);
    if (V == NULL) {
      get_volume_misses++;
      get_misses++;
      return 0;
    }
    if (V->disabled || binlog_disabled || force_write_index) {
      return 0;
    }
    l = FUNC18 (V, percent * 0.01, file_size);
    return FUNC10 (c, key - dog_len, value_buff, FUNC12 (value_buff, "%d", l));
  }

  if (key_len == 7 && !FUNC9 (key, "volumes", 7) && (l = FUNC2 ()) >= 0) {
    return FUNC10 (c, key - dog_len, value_buff, l);
  }

  if (key_len >= 6 && !FUNC9 (key, "volume", 6) && FUNC13 (key + 6, "%lld", &volume_id) == 1 &&
      (l = FUNC7 (value_buff, volume_id) ) >= 0) {
    FUNC22 (&c->Out, value_buff+l, FUNC12 (value_buff+l, "VALUE %s 1 %d\r\n", key - dog_len, l));
    FUNC22 (&c->Out, value_buff, l);
    FUNC22 (&c->Out, "\r\n", 2);
    return 0;
  }

  if (key_len >= 6 && !FUNC9 (key, "Volume", 6) && FUNC13 (key + 6, "%lld", &volume_id) == 1 &&
      (l = FUNC8 (value_buff, volume_id)) >= 0) {
    return FUNC10 (c, key - dog_len, value_buff, l);
  }

  if (key_len == 4 && !FUNC9 (key, "dirs", 4) && !FUNC5 (value_buff)) {
    l = FUNC19 (value_buff);
    FUNC22 (&c->Out, value_buff+l, FUNC12 (value_buff+l, "VALUE %s 1 %d\r\n", key - dog_len, l));
    FUNC22 (&c->Out, value_buff, l);
    FUNC22 (&c->Out, "\r\n", 2);
    return 0;
  }

  if (key_len >= 5 && !FUNC20 (key, "stats", 5)) {
    int len = FUNC16 (c);
    return FUNC10 (c, key - dog_len, stats_buff, len);
  }

  int dir_id = -1;

  if (key_len >= 11 && !FUNC9 (key, "enable_file", 11) && FUNC13 (key + 11, "%lld,%d", &volume_id, &dir_id) == 2) {
    volume_t *V = FUNC6 (volume_id, 0);
    if (V == NULL) {
      get_misses++;
      return 0;
    }
    l = FUNC15 (V, dir_id);
    if (l == STORAGE_ERR_SIZE_MISMATCH) {
      return FUNC10 (c, key - dog_len, "2", 1);
    }
    if (l < 0) {
      FUNC21 (0, "enable_file%lld,%d returns error code %d.\n", volume_id, dir_id, l);
    }
    return FUNC10 (c, key - dog_len, l < 0 ? "0" : "1", 1);
  }

  if (key_len >= 12 && !FUNC9 (key, "disable_file", 12) && FUNC13 (key + 12, "%lld,%d", &volume_id, &dir_id) == 2) {
    volume_t *V = FUNC6 (volume_id, 0);
    if (V == NULL) {
      get_misses++;
      return 0;
    }
    l = FUNC14 (V, dir_id);
    return FUNC10 (c, key - dog_len, l < 0 ? "0" : "1", 1);
  }

  if (key_len >= 7 && !FUNC9 (key, "scandir", 7)) {
    char *msg;
    int dir_id = FUNC4 (key + 7);
    if (dir_id < 0) {
      msg = "Path wasn't found";
      return FUNC10 (c, key - dog_len, msg, FUNC19 (msg));
    }
    int r = FUNC17 (dir_id);
    if (r == STORAGE_ERR_SCANDIR_MULTIPLE) {
      msg = "Couldn't scandir more than once";
      return FUNC10 (c, key - dog_len, msg, FUNC19 (msg));
    } else {
      return FUNC10 (c, key - dog_len, value_buff, FUNC12 (value_buff, "%d", r));
    }
  }

/*
  if (key_len >= 11 && !memcmp (key, "disable_dir", 11) && sscanf (key + 11, "%d", &dir_id) == 1) {
    l = change_dir_write_status (dir_id, 1);
    if (l < 0) {
      return 0;
    }
    get_hits++;
    return return_one_key (c, key - dog_len, value_buff, sprintf (value_buff, "%d", l));
  }

  if (key_len >= 10 && !memcmp (key, "enable_dir", 10) && sscanf (key + 10, "%d", &dir_id) == 1) {
    l = change_dir_write_status (dir_id, 0);
    if (l < 0) {
      return 0;
    }
    get_hits++;
    return return_one_key (c, key - dog_len, value_buff, sprintf (value_buff, "%d", l));
  }
*/
  get_misses++;
  return 0;
}