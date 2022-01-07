
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct friends_gather_extra {int query_type; int list_id; } ;


 int memcpy (char*,int ,int) ;
 int sprintf (char*,char*,int,int) ;
 int user_num ;
 int userlist ;

int friends_generate_preget_query (char *buff, const char *key, int key_len, void *E, int n) {
  if (!user_num) return 0;
  struct friends_gather_extra* extra = E;
  if (extra->query_type != 1) {
   return 0;
  }

  int r = sprintf (buff, "set userlist%d 0 0 %d\r\n0000", extra->list_id, user_num * 4 + 4);
  memcpy (buff + r, userlist, user_num * 4);
  r += user_num * 4;
  return r;
}
