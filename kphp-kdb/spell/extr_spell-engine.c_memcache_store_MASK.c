#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct keep_mc_store {scalar_t__* res; int /*<<< orphan*/  text_id; } ;
struct connection {int /*<<< orphan*/  Tmp; int /*<<< orphan*/  In; } ;

/* Variables and functions */
 int VALUE_BUFFSIZE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  cmd_set ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct connection*) ; 
 int /*<<< orphan*/  FUNC3 (struct connection*) ; 
 scalar_t__ max_misspell_words ; 
 int max_msg_size ; 
 int mct_set ; 
 int FUNC4 (int /*<<< orphan*/ *,scalar_t__*,int) ; 
 int FUNC5 (scalar_t__*,scalar_t__*,scalar_t__) ; 
 int FUNC6 (char const*,char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (scalar_t__*) ; 
 scalar_t__ test_mode ; 
 scalar_t__* value_buff ; 
 scalar_t__ worst_misspell_msg ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,struct keep_mc_store*,int) ; 

int FUNC9 (struct connection *c, int op, const char *key, int key_len, int flags, int delay, int size) {
  cmd_set++;
  if (op != mct_set || size >= VALUE_BUFFSIZE - 1) {
    FUNC2 (c);
    return -2;
  }
  struct keep_mc_store s;
  if (FUNC6 (key, "text%d", &s.text_id) == 1) {

    if (max_msg_size < size) {
      max_msg_size = size;
    }
    FUNC0 (FUNC4 (&c->In, value_buff, size) == size);
    value_buff[size] = 0;
    int r = FUNC5 (value_buff, s.res, test_mode);
    if (!r) {
      if (max_misspell_words < s.res[1]) {
        max_misspell_words = s.res[1];
        if (test_mode) {
          if (worst_misspell_msg) {
            FUNC1 (worst_misspell_msg);
          }
          worst_misspell_msg = FUNC7 (value_buff);
        }
      }
      FUNC3 (c);
      FUNC8 (c->Tmp, &s, sizeof (struct keep_mc_store));
      return 1;
    }
    FUNC2 (c);
    return 0;
  }
/*
  if (sscanf (key, "TEXT%d", &s.text_id) == 1) {
    assert (read_in (&c->In, value_buff, size) == size);
    value_buff[size] = 0;
    int r = spell_check2 (value_buff, s.res);
    if (!r) {
      init_tmp_buffers (c);
      write_out (c->Tmp, &s, sizeof (struct keep_mc_store));
      return 1;
    }
    free_tmp_buffers (c);
    return 0;
  }
*/
  FUNC2 (c);
  return -2;
}