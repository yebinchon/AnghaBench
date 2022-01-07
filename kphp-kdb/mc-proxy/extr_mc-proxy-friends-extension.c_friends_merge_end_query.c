
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gather_entry {int res_bytes; int* data; } ;
struct friends_gather_extra {int query_type; int num; int raw; } ;
struct connection {int dummy; } ;


 int MAX_USERLIST_NUM ;
 int assert (int ) ;
 int compare ;
 int qsort (int*,int,int,int ) ;
 int* resultlist ;
 int return_one_key_list (struct connection*,char const*,int,int,int ,int*,int) ;

int friends_merge_end_query (struct connection *c, const char *key, int key_len, void *E, struct gather_entry *data, int tot_num) {
  int i, j;
  struct friends_gather_extra* extra = E;
  if (extra->query_type == 1) {
    for (j = 0; j < extra->num; j++) {
      resultlist[j] = 0;
    }
    for (i = 0; i < tot_num; i++) {
      if (data[i].res_bytes == 4 * extra->num) {
       for (j = 0; j < extra->num; j++) {
          resultlist[j] += data[i].data[j];
        }
      }
    }
    return_one_key_list (c, key, key_len, 0x7fffffff, -extra->raw, resultlist, extra->num);
  } else if (extra->query_type == 2) {
    int res = 0;
    for (i = 0; i < tot_num; i++) {
      if (data[i].res_bytes >= 4) {
       for (j = 0; j < data[i].data[0]; j++) {
          if (res < MAX_USERLIST_NUM) {
            resultlist[res++] = data[i].data[j + 1];
         }
        }
      }
    }
    qsort (resultlist, res, sizeof (int), compare);
    return_one_key_list (c, key, key_len, res, -extra->raw, resultlist, res);
  } else {
    assert (0);
  }
  return 1;
}
