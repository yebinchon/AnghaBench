#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct lev_copyexec_result_data {scalar_t__ random_tag; scalar_t__ binlog_pos; int /*<<< orphan*/  result; int /*<<< orphan*/  transaction_id; } ;
struct TYPE_5__ {scalar_t__ random_tag; scalar_t__ binlog_pos; void* last_action_time; void* last_data_time; void* first_data_time; } ;
typedef  TYPE_1__ host_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 TYPE_1__* FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,scalar_t__,scalar_t__,...) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 void* now ; 
 int FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6 (host_t *H, struct lev_copyexec_result_data *E) {
  if (H == NULL) {
    H = FUNC2 (E->random_tag, 0);
    if (H == NULL) {
      FUNC3 ("set_result: get_host_by_random_tag (0x%llx) returns NULL. (log_cur_pos: %lld)\n", E->random_tag, FUNC4 ());
      FUNC1 (1);
    }
  }
  FUNC0 (H->random_tag == E->random_tag);
  if (H->binlog_pos >= E->binlog_pos) {
    FUNC3 ("set_result: H->binlog_pos >= E->binlog_pos, H->binlog_pos = 0x%llx, E->binlog_pos = 0x%llx. (log_cur_pos: %lld)\n", H->binlog_pos, E->binlog_pos, FUNC4 ());
    FUNC1 (1);
    return -1;
  }
  H->binlog_pos = E->binlog_pos;
  if (!H->first_data_time) {
    H->first_data_time = now;
  }
  H->last_data_time = H->last_action_time = now;
  return FUNC5 (H, E->transaction_id, E->result);
}