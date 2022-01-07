
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct connection {int dummy; } ;


 int FreeCnt ;
 int MAX_RECORD_WORDS ;
 int * NewAllocations ;
 int SplitBlocks ;
 int UsedCnt ;
 int binlog_disabled ;
 int exec_get_check_privacy (struct connection*,char const*,int) ;
 int exec_get_common_friends (struct connection*,char const*,int) ;
 int exec_get_common_friends_num (struct connection*,char const*,int) ;
 int exec_get_friends (struct connection*,char const*,int,int) ;
 int exec_get_one_friend (struct connection*,char const*,int) ;
 int exec_get_one_request (struct connection*,char const*,int) ;
 int exec_get_privacy (struct connection*,char const*,int) ;
 int exec_get_recent_friends (struct connection*,char const*,int) ;
 int exec_get_requests (struct connection*,char const*,int) ;
 int fprintf (int ,char*,char const*) ;
 int free_tmp_buffers (struct connection*) ;
 int friend_prepare_stats (struct connection*) ;
 int return_one_key (struct connection*,char const*,int ,int ) ;
 int return_one_key_list (struct connection*,char const*,int,int,int ,int ,int) ;
 scalar_t__ reverse_friends_mode ;
 int sprintf (int ,char*,int) ;
 int start_write_binlog () ;
 int stats_buff ;
 int stderr ;
 int stop_write_binlog () ;
 int strncmp (char const*,char*,int) ;
 int verbosity ;

int memcache_get (struct connection *c, const char *key, int key_len) {
  if (verbosity > 1) {
    fprintf (stderr, "memcache_get: key='%s'\n", key);
  }

  if (key_len >= 5 && !strncmp (key, "stats", 5)) {
    return_one_key (c, key, stats_buff, friend_prepare_stats (c));
    return 0;
  }

  if (key_len == 18 && !strncmp (key, "start_write_binlog", 18)) {
    return_one_key (c, key, stats_buff, sprintf (stats_buff, "%d", start_write_binlog()));
    return 0;
  }

  if (key_len == 17 && !strncmp (key, "stop_write_binlog", 17)) {
    return_one_key (c, key, stats_buff, sprintf (stats_buff, "%d", stop_write_binlog()));
    return 0;
  }

  if (key_len == 15 && !strncmp (key, "binlog_disabled", 15)) {
    return_one_key (c, key, stats_buff, sprintf (stats_buff, "%d", binlog_disabled));
    return 0;
  }

  if (key_len >= 16 && !strncmp (key, "free_block_stats", 16)) {
    return_one_key_list (c, key, key_len, MAX_RECORD_WORDS, 0, FreeCnt, MAX_RECORD_WORDS);
    return 0;
  }

  if (key_len >= 16 && !strncmp (key, "used_block_stats", 16)) {
    return_one_key_list (c, key, key_len, MAX_RECORD_WORDS, 0, UsedCnt, MAX_RECORD_WORDS);
    return 0;
  }

  if (key_len >= 16 && !strncmp (key, "allocation_stats", 16)) {
    return_one_key_list (c, key, key_len, MAX_RECORD_WORDS, 0, NewAllocations[0], MAX_RECORD_WORDS * 4);
    return 0;
  }

  if (key_len >= 17 && !strncmp (key, "split_block_stats", 17)) {
    return_one_key_list (c, key, key_len, MAX_RECORD_WORDS, 0, SplitBlocks, MAX_RECORD_WORDS);
    return 0;
  }

  if (reverse_friends_mode) {
    if (key_len >= 19 && (!strncmp (key, "common_friends_num", 18) || !strncmp (key, "%common_friends_num", 19))) {
      exec_get_common_friends_num (c, key, key_len);
      free_tmp_buffers (c);
      return 0;
    }
    if (key_len >= 15 && (!strncmp (key, "common_friends", 14) || !strncmp (key, "%common_friends", 15))) {
      exec_get_common_friends (c, key, key_len);
      free_tmp_buffers (c);
      return 0;
    }
    return 0;
  }

  if (key_len >= 7 && !strncmp (key, "friends", 7)) {
    exec_get_friends (c, key, key_len, 7);
    return 0;
  }

  if (key_len >= 9 && !strncmp (key, "friendcnt", 9)) {
    exec_get_friends (c, key, key_len, 9);
    return 0;
  }

  if (key_len >= 9 && !strncmp (key, "friendreq", 9)) {
    exec_get_one_request (c, key, key_len);
    return 0;
  }

  if (key_len >= 9 && !strncmp (key, "requests", 8)) {
    exec_get_requests (c, key, key_len);
    return 0;
  }

  if (key_len >= 7 && !strncmp (key, "friend", 6)) {
    exec_get_one_friend (c, key, key_len);
    return 0;
  }

  if (key_len >= 14 && !strncmp (key, "recent_friends", 14)) {
    exec_get_recent_friends (c, key, key_len);
    return 0;
  }

  if (key_len >= 1 && *key >= '1' && *key <= '9') {
    exec_get_check_privacy (c, key, key_len);
    return 0;
  }

  if (key_len >= 7 && !strncmp (key, "privacy", 7)) {
    exec_get_privacy (c, key, key_len);
    return 0;
  }

  return 0;
}
