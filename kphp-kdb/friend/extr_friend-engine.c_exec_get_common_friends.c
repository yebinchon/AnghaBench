
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct connection {int dummy; } ;


 int MAX_USERLIST_NUM ;
 int free_tmp_buffers (struct connection*) ;
 int get_common_friends (int,int,int *,int ,int ) ;
 int resultlist ;
 int return_one_key_list (struct connection*,char const*,int,int,int,int ,int) ;
 int sscanf (char const*,char*,int*,int *,int*) ;
 int * userlist ;

void exec_get_common_friends (struct connection *c, const char *str, int len) {
 free_tmp_buffers (c);
  int user_id = 0;
  int raw = *str == '%';
  int pos = 0;
  const char *str_orig = str;
  int len_orig = len;
  if ((sscanf (str, "common_friends%d,%d%n", &user_id, &userlist[0], &pos) >= 2 && pos > 0) ||
      (sscanf (str, "%%common_friends%d,%d%n", &user_id, &userlist[0], &pos) >= 2 && pos > 0)) {
    if (len != pos) {
     return;
    }
   int res = get_common_friends (user_id, 1, userlist, resultlist, MAX_USERLIST_NUM);
   return_one_key_list (c, str_orig, len_orig, res, -raw, resultlist, res);
  }
}
