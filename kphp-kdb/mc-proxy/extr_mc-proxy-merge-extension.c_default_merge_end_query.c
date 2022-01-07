
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gather_entry {int dummy; } ;
struct connection {int dummy; } ;


 int assert (int ) ;
 int return_one_key (struct connection*,char const*,char*,int) ;

int default_merge_end_query (struct connection *c, const char *key, int key_len, void *E, struct gather_entry *data, int tot_num) {
  assert (0);
  return return_one_key (c, key, "ERROR: use default for merge_end_query", 38);
}
