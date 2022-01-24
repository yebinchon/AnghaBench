#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {TYPE_3__* q; TYPE_2__* st; int /*<<< orphan*/  subscribed; scalar_t__ ts; scalar_t__ prev_ts; int /*<<< orphan*/  timeout; } ;
typedef  TYPE_1__ qkey ;
struct TYPE_7__ {scalar_t__ data_len; int* data; int /*<<< orphan*/  created; struct TYPE_7__* next; } ;
typedef  TYPE_2__ event ;
struct TYPE_8__ {int /*<<< orphan*/  name; int /*<<< orphan*/  extra; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLOCK_MONOTONIC ; 
 scalar_t__ Q_WATCHCAT ; 
 scalar_t__ __may_wait ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  buff_overflow_cnt ; 
 int /*<<< orphan*/  cnt_delay ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 scalar_t__ debug_buff ; 
 int debug_error ; 
 scalar_t__ ds ; 
 int /*<<< orphan*/  events_sent ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 double FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * http_failed ; 
 double FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 double max_delay ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*) ; 
 int /*<<< orphan*/  quick_fix ; 
 double sum_delay ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (scalar_t__,int*,scalar_t__) ; 

char *FUNC11 (qkey *k) {
  if (!quick_fix) {
    ds = debug_buff;
  }

  FUNC7 (k);

  if (FUNC3 (k->q->name) == Q_WATCHCAT) {
    FUNC9 (FUNC5 (k->q->name), k->timeout, k->q->extra);
  }

  k->ts = k->prev_ts + 1;
  FUNC2 ("{\"ts\":\"%d\"", k->ts);

  int f = 0;
  FUNC2 (",\"events\":[");

  event *e = k->st;

  double cur_time = FUNC4 (CLOCK_MONOTONIC);
  while (e->next != NULL) {
    e = e->next;

    if (f) {
      FUNC2 (",");
    } else {
      __may_wait = 0;
      f = 1;
    }

    if (ds + e->data_len > debug_buff + (1 << 23)) {
      FUNC1 ("Queue %s overflow\n", k->q->name);
      debug_error = 1;
      break;
    }
    FUNC0 (ds + e->data_len < debug_buff + (1 << 24));
    FUNC0 (e->data_len > 0);
    if (e->data[0] == 2) {
      FUNC2 ("%s", e->data + 1);
    } else {
      FUNC2 ("\"");
      ds += FUNC10 (ds, e->data, e->data_len - 1);
      FUNC2 ("\"");
    }

    double cur_delay = cur_time - FUNC6 (e->created, k->subscribed);
    sum_delay += cur_delay;
    cnt_delay++;
    events_sent++;

    if (cur_delay > max_delay) {
      max_delay = cur_delay;
//      fprintf (stderr, "%lf\n", max_delay);
    }
  }
  k->st = e;

  FUNC2 ("]}");

  if (debug_error) {
    http_failed[3]++;
    buff_overflow_cnt++;
    debug_error = 0;
    ds = debug_buff;
    FUNC2 ("{\"failed\":3}");
  }

  FUNC8 (k->q);

  return debug_buff;
}