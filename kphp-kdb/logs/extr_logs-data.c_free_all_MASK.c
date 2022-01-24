#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  event ;
struct TYPE_3__ {int /*<<< orphan*/ * name; } ;

/* Variables and functions */
 int FN ; 
 int MAX_EV ; 
 int MAX_EVENT_MEM ; 
 size_t MAX_HISTORY ; 
 int MAX_TYPE ; 
 int /*<<< orphan*/  ans ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/ * color_int ; 
 int /*<<< orphan*/ * color_ll ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  dump_expr ; 
 scalar_t__ dump_mode ; 
 int /*<<< orphan*/ * dump_query ; 
 int /*<<< orphan*/  eq ; 
 scalar_t__ eq_n ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  events_mem ; 
 scalar_t__ events_memory ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 size_t history_l ; 
 scalar_t__* history_q ; 
 size_t history_r ; 
 int /*<<< orphan*/  log_crc32 ; 
 int /*<<< orphan*/  log_position ; 
 int /*<<< orphan*/  log_timestamp ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  map_type_id ; 
 int /*<<< orphan*/ * q_st_int ; 
 int /*<<< orphan*/ * q_st_ll ; 
 scalar_t__* std_t ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ test_mode ; 
 int /*<<< orphan*/  time_table_log_crc32 ; 
 int /*<<< orphan*/  time_table_log_position ; 
 int /*<<< orphan*/  time_table_log_timestamp ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 TYPE_1__* types ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ verbosity ; 
 int /*<<< orphan*/  write_only ; 

void FUNC11 (void) {
  if (verbosity > 0 || test_mode) {
    FUNC10 (log_position);
    FUNC10 (log_timestamp);
    FUNC10 (log_crc32);

    FUNC10 (time_table_log_position);
    FUNC10 (time_table_log_timestamp);
    FUNC10 (time_table_log_crc32);

    while (history_l != history_r) {
      FUNC3 (history_q[history_l]);
      history_q[history_l++] = 0;
      if (history_l > MAX_HISTORY) {
        history_l = 0;
      }
    }

    while (eq_n) {
      FUNC4();
    }
    FUNC0 (events_memory == 0);

    if (!write_only) {
      FUNC1 (events_mem, MAX_EVENT_MEM);
      FUNC1 (eq, sizeof (event *) * MAX_EV);
      FUNC1 (ans, sizeof (int) * MAX_EV);
    }

    int i;
    for (i = 0; i < FN; i += 1 + std_t[i]) {
      if (std_t[i]) {
        FUNC8 (&color_ll[i]);
        FUNC8 (&q_st_ll[i]);
      } else {
        FUNC7 (&color_int[i]);
        FUNC7 (&q_st_int[i]);
      }
    }

    for (i = 0; i < MAX_TYPE; i++) {
      if (types[i].name != NULL) {
        FUNC9 (&types[i]);
      }
    }

    FUNC8 (&map_type_id);

    if (dump_mode && dump_query != NULL) {
      FUNC5 (&dump_expr);
    }

    FUNC6 (stderr, "Memory left: %ld\n", FUNC2());
//    while (1) {}
    FUNC0 (FUNC2() == 0);
  }
}