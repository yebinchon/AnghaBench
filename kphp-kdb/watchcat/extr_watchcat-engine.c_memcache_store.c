
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct connection {int In; } ;
struct TYPE_2__ {int q_id; int w_id; } ;


 int INIT ;
 int MAX_VALUE_LEN ;
 int RETURN (int ,int) ;
 int WRITE_STRING (char*,char*) ;
 TYPE_1__* ans ;
 int ans_n ;
 char* buf ;
 int eat_at (char const*,int,char**,int*) ;
 int fprintf (int ,char*,...) ;
 char* gen_addrs (char*) ;
 int my_verbosity_tmp ;
 int safe_read_in (int *,char*,int) ;
 int send_to_queue (char*,int,int) ;
 int set ;
 int sprintf (char*,char*,int ) ;
 char* stats_buff ;
 int stderr ;
 int strcmp (char*,char*) ;

int memcache_store (struct connection *c, int op, const char *old_key, int old_key_len, int flags, int delay, int size) {
  INIT;

  if (my_verbosity_tmp > 1) {
    fprintf (stderr, "memcache_store: key='%s', key_len=%d, value_len=%d, flags = %d, exp_time = %d\n", old_key, old_key_len, size, flags, delay);
  }

  if (size < MAX_VALUE_LEN) {
    char *key;
    int key_len;

    eat_at (old_key, old_key_len, &key, &key_len);

    if (!strcmp (key, "entry")) {
      safe_read_in (&c->In, stats_buff, size);
      stats_buff[size] = 0;

      if (my_verbosity_tmp > 1) {
        fprintf (stderr, "entry: %s\n", stats_buff);
      }
      char *res = gen_addrs (stats_buff);
      if (ans_n) {

        int i, f = 0;
        char *s = buf;

        for (i = 0; i < ans_n; i++) {
          if (f) {
            *s++ = ',';
          } else {
            f = 1;
          }

          s += sprintf (s, "%lld", ans[i].w_id);

          if (my_verbosity_tmp > 1) {
            fprintf (stderr, "%d:%lld\n", ans[i].q_id, ans[i].w_id);
          }
          if (i + 1 == ans_n || ans[i + 1].q_id != ans[i].q_id) {
            *s++ = ';';
            *s = 0;


            WRITE_STRING (s, res);
            send_to_queue (buf, s - buf, ans[i].q_id);
            s = buf;
            f = 0;
          }
        }
      }

      RETURN(set, 1);
    }
  }

  RETURN(set, -2);
}
