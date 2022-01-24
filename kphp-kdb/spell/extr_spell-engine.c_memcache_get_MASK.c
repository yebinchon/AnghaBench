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
struct keep_mc_store {int text_id; int* res; } ;
struct connection {TYPE_1__* Tmp; } ;
struct TYPE_2__ {scalar_t__ start; } ;

/* Variables and functions */
 int /*<<< orphan*/  STATS_BUFF_SIZE ; 
 int /*<<< orphan*/  cmd_get ; 
 int /*<<< orphan*/  FUNC0 (struct connection*) ; 
 int FUNC1 (char const*,int) ; 
 int /*<<< orphan*/  get_hits ; 
 int /*<<< orphan*/  get_missed ; 
 int /*<<< orphan*/  FUNC2 (char const*,char*,int) ; 
 int FUNC3 (struct connection*,char const*,scalar_t__,int) ; 
 int FUNC4 (scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct connection*) ; 
 int FUNC6 (scalar_t__,char*,int,int,int) ; 
 int FUNC7 (char const*,char*,int*) ; 
 scalar_t__ stats_buff ; 
 int FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (char const*,char*,int) ; 
 scalar_t__ test_mode ; 
 scalar_t__ worst_misspell_msg ; 

int FUNC10 (struct connection *c, const char *key, int key_len) {
  cmd_get++;
  int dog_len = FUNC1 (key, key_len);
  key += dog_len;
  key_len -= dog_len;
  if (key_len >= 5 && !FUNC9 (key, "stats", 5)) {
    int stats_len = FUNC5 (c);
    FUNC3 (c, key - dog_len, stats_buff, stats_len);
    return 0;
  }
  struct keep_mc_store *Data = 0;
  if (c->Tmp) {
    Data = (struct keep_mc_store *) c->Tmp->start;
  }
  int text_id;
  if (Data && FUNC7 (key, "request%d", &text_id) == 1 && Data->text_id == text_id) {
    get_hits++;
    return FUNC3 (c, key - dog_len, stats_buff, FUNC6 (stats_buff, "%d,%d,%d", Data->res[0], Data->res[1], Data->res[2]));
  }
  if (key_len == 5 && !FUNC2 (key, "dicts", 5)) {
  int l = FUNC4 (stats_buff, STATS_BUFF_SIZE);
    get_hits++;
    return FUNC3 (c, key - dog_len, stats_buff, l);
  }
  if (test_mode && worst_misspell_msg && key_len == 18 && !FUNC2 (key, "worst_misspell_msg", 18)) {
    get_hits++;
    return FUNC3 (c, key - dog_len, worst_misspell_msg,FUNC8 (worst_misspell_msg));
  }
  FUNC0 (c);
  get_missed++;
  return 0;
}