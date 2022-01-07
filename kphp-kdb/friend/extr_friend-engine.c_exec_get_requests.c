
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct connection {int dummy; } ;


 scalar_t__ R ;
 scalar_t__ R_end ;
 int fprintf (int ,char*,int,int,int) ;
 int prepare_friend_requests (int,int) ;
 int return_one_key_list (struct connection*,char const*,int,int,int ,scalar_t__,scalar_t__) ;
 int sscanf (char const*,char*,int*,int*) ;
 int stderr ;
 int verbosity ;

void exec_get_requests (struct connection *c, const char *str, int len) {
  int user_id, num = -1;
  if (sscanf (str+8, "%d#%d", &user_id, &num) >= 1 && user_id > 0 && num >= -1) {
    int res = prepare_friend_requests (user_id, num);
    if (verbosity > 1) {
      fprintf (stderr, "prepare_friend_requests(%d,%d) = %d\n", user_id, num, res);
    }
    if (res >= 0) {
      return_one_key_list (c, str, len, res, 0, R, R_end - R);
      return;
    }
  }
  return;
}
