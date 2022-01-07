
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct keep_mc_header {int list_id; int num; } ;
struct connection {int Tmp; int In; } ;
typedef int D ;


 int MAX_USERLIST_NUM ;
 int advance_skip_read_ptr (int *,int) ;
 int init_tmp_buffers (struct connection*) ;
 int np_news_parse_list (struct keep_mc_header*,int ,int,int *,int) ;
 int sscanf (char const*,char*,int*,int*) ;
 struct keep_mc_header* userlist ;
 int write_out (int ,struct keep_mc_header*,int) ;

int exec_store_userlist (struct connection *c, const char *key, int key_len, int size) {
  int pos = 0;
  int list_id;
  sscanf (key, "userlist%d%n", &list_id, &pos);
  if (pos != key_len || list_id >= 0) {
    advance_skip_read_ptr (&c->In, size);
    return 0;
  }
  int res = np_news_parse_list (userlist, MAX_USERLIST_NUM, 1, &c->In, size);

  if (res <= 0) {
    return 0;
  }
  struct keep_mc_header D;
  D.list_id = list_id;
  D.num = res;
  init_tmp_buffers (c);
  write_out (c->Tmp, &D, sizeof(D));
  write_out (c->Tmp, userlist, res * 4);
  return 1;
}
