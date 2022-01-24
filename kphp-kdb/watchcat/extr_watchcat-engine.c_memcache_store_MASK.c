#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct connection {int /*<<< orphan*/  In; } ;
struct TYPE_2__ {int q_id; int /*<<< orphan*/  w_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  INIT ; 
 int MAX_VALUE_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 TYPE_1__* ans ; 
 int ans_n ; 
 char* buf ; 
 int /*<<< orphan*/  FUNC2 (char const*,int,char**,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 char* FUNC4 (char*) ; 
 int my_verbosity_tmp ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,int) ; 
 int /*<<< orphan*/  set ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,int /*<<< orphan*/ ) ; 
 char* stats_buff ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC8 (char*,char*) ; 

int FUNC9 (struct connection *c, int op, const char *old_key, int old_key_len, int flags, int delay, int size) {
  INIT;

  if (my_verbosity_tmp > 1) {
    FUNC3 (stderr, "memcache_store: key='%s', key_len=%d, value_len=%d, flags = %d, exp_time = %d\n", old_key, old_key_len, size, flags, delay);
  }

  if (size < MAX_VALUE_LEN) {
    char *key;
    int key_len;

    FUNC2 (old_key, old_key_len, &key, &key_len);

    if (!FUNC8 (key, "entry")) {
      FUNC5 (&c->In, stats_buff, size);
      stats_buff[size] = 0;

      if (my_verbosity_tmp > 1) {
        FUNC3 (stderr, "entry: %s\n", stats_buff);
      }
      char *res = FUNC4 (stats_buff);
      if (ans_n) {
        //fprintf (stderr, "entry:%s\n", stats_buff);
        int i, f = 0;
        char *s = buf;

        for (i = 0; i < ans_n; i++) {
          if (f) {
            *s++ = ',';
          } else {
            f = 1;
          }

          s += FUNC7 (s, "%lld", ans[i].w_id);

          if (my_verbosity_tmp > 1) {
            FUNC3 (stderr, "%d:%d\n", ans[i].q_id, ans[i].w_id);
          }
          if (i + 1 == ans_n || ans[i + 1].q_id != ans[i].q_id) {
            *s++ = ';';
            *s = 0;

            //TODO buffer overflow is here
            FUNC1 (s, res);
            FUNC6 (buf, s - buf, ans[i].q_id);
            s = buf;
            f = 0;
          }
        }
      }

      FUNC0(set, 1);
    }
  }

  FUNC0(set, -2);
}