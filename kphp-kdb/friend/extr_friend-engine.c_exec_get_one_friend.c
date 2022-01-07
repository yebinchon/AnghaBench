
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct connection {int dummy; } ;


 int fprintf (int ,char*,int,int,int) ;
 int get_friend_cat (int,int) ;
 int return_one_key (struct connection*,char const*,int ,int ) ;
 int sprintf (int ,char*,int) ;
 int sscanf (char const*,char*,int*,int*) ;
 int stats_buff ;
 int stderr ;
 int verbosity ;

void exec_get_one_friend (struct connection *c, const char *str, int len) {
  int user_id, friend_id;
  if (sscanf (str, "friend%d_%d", &user_id, &friend_id) >= 2) {
    int res = get_friend_cat (user_id, friend_id);
    if (verbosity > 1) {
      fprintf (stderr, "get_friend(%d,%d) = %d\n", user_id, friend_id, res);
    }
    if (res >= 0) {
      return_one_key (c, str, stats_buff, sprintf(stats_buff, "%d", res));
      return;
    }
  }
  return;
}
