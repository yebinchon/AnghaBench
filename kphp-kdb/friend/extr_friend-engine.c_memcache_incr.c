
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct connection {int Out; } ;


 int binlog_disabled ;
 int do_add_friend (int,int,long long,long long,int ) ;
 int memcmp (char const*,char*,int) ;
 int reverse_friends_mode ;
 int sprintf (char*,char*,int) ;
 int sscanf (char const*,char*,int*,int*) ;
 char* stats_buff ;
 int write_out (int *,char*,int) ;

int memcache_incr (struct connection *c, int op, const char *key, int len, long long arg) {
  int user_id, friend_id;

  if (len >= 7 && !memcmp (key, "friend", 6) && !reverse_friends_mode) {
    int res = -1;
    if (binlog_disabled != 2 && sscanf (key, "friend%d_%d", &user_id, &friend_id) >= 2) {
      res = do_add_friend (user_id, friend_id, op ? 0 : arg, ~arg, 0);
    }
    if (res > 0) {
      write_out (&c->Out, stats_buff, sprintf(stats_buff, "%d\r\n", res));
    } else {
      write_out (&c->Out, "NOT_FOUND\r\n", 11);
    }
    return 0;
  }

  write_out (&c->Out, "NOT_FOUND\r\n", 11);
  return 0;
}
