
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct keep_mc_store {scalar_t__* res; int text_id; } ;
struct connection {int Tmp; int In; } ;


 int VALUE_BUFFSIZE ;
 int assert (int) ;
 int cmd_set ;
 int free (scalar_t__) ;
 int free_tmp_buffers (struct connection*) ;
 int init_tmp_buffers (struct connection*) ;
 scalar_t__ max_misspell_words ;
 int max_msg_size ;
 int mct_set ;
 int read_in (int *,scalar_t__*,int) ;
 int spell_check (scalar_t__*,scalar_t__*,scalar_t__) ;
 int sscanf (char const*,char*,int *) ;
 scalar_t__ strdup (scalar_t__*) ;
 scalar_t__ test_mode ;
 scalar_t__* value_buff ;
 scalar_t__ worst_misspell_msg ;
 int write_out (int ,struct keep_mc_store*,int) ;

int memcache_store (struct connection *c, int op, const char *key, int key_len, int flags, int delay, int size) {
  cmd_set++;
  if (op != mct_set || size >= VALUE_BUFFSIZE - 1) {
    free_tmp_buffers (c);
    return -2;
  }
  struct keep_mc_store s;
  if (sscanf (key, "text%d", &s.text_id) == 1) {

    if (max_msg_size < size) {
      max_msg_size = size;
    }
    assert (read_in (&c->In, value_buff, size) == size);
    value_buff[size] = 0;
    int r = spell_check (value_buff, s.res, test_mode);
    if (!r) {
      if (max_misspell_words < s.res[1]) {
        max_misspell_words = s.res[1];
        if (test_mode) {
          if (worst_misspell_msg) {
            free (worst_misspell_msg);
          }
          worst_misspell_msg = strdup (value_buff);
        }
      }
      init_tmp_buffers (c);
      write_out (c->Tmp, &s, sizeof (struct keep_mc_store));
      return 1;
    }
    free_tmp_buffers (c);
    return 0;
  }
  free_tmp_buffers (c);
  return -2;
}
