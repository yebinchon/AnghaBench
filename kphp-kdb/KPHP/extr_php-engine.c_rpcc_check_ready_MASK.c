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
struct connection {int flags; scalar_t__ status; scalar_t__ ready; int fd; double last_query_sent_time; double last_response_time; } ;
struct TYPE_2__ {int in_packet_num; } ;

/* Variables and functions */
 int C_FAILED ; 
 TYPE_1__* FUNC0 (struct connection*) ; 
 double RPC_CONNECT_TIMEOUT ; 
 double RPC_FAIL_INTERVAL ; 
 double RPC_STOP_INTERVAL ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ conn_connecting ; 
 scalar_t__ conn_error ; 
 scalar_t__ conn_expect_query ; 
 scalar_t__ conn_reading_answer ; 
 scalar_t__ conn_running ; 
 scalar_t__ conn_wait_answer ; 
 scalar_t__ cr_busy ; 
 scalar_t__ cr_failed ; 
 int cr_notyet ; 
 scalar_t__ cr_ok ; 
 scalar_t__ cr_stopped ; 
 int /*<<< orphan*/  FUNC2 (struct connection*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int,scalar_t__,scalar_t__,double,double,double) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct connection*,int /*<<< orphan*/ ) ; 
 double precise_now ; 
 double rpc_ping_interval ; 
 int /*<<< orphan*/  stderr ; 
 int verbosity ; 

int FUNC6 (struct connection *c) {
  /*assert (c->status != conn_none);*/
  /*if (c->status == conn_none || c->status == conn_connecting || RPCC_DATA(c)->in_packet_num < 0) {*/
    /*return c->ready = cr_notyet;*/
  /*}*/
  /*if (c->status == conn_error || c->ready == cr_failed) {*/
    /*return c->ready = cr_failed;*/
  /*}*/
  /*return c->ready = cr_ok;*/

  if ((c->flags & C_FAILED) || c->status == conn_error) {
    if (verbosity > 1 && c->ready != cr_failed) {
      FUNC3 (stderr, "changing connection %d readiness from %ld to %ld [FAILED] lq=%.03f lr=%.03f now=%.03f\n", c->fd, c->ready, cr_failed, c->last_query_sent_time, c->last_response_time, precise_now);
    }
    return c->ready = cr_failed;
  }

  if (FUNC0(c)->in_packet_num < 0) {
    if (FUNC0(c)->in_packet_num == -1 && c->status == conn_running) {
      if (verbosity > 1 && c->ready != cr_ok) {
        FUNC3 (stderr, "changing connection %d readiness from %ld to %ld [OK] lq=%.03f lr=%.03f now=%.03f\n", c->fd, c->ready, cr_ok, c->last_query_sent_time, c->last_response_time, precise_now);
      }
      return c->ready = cr_ok;
    }

    FUNC1 (c->last_query_sent_time != 0);
    if (c->last_query_sent_time < precise_now - RPC_CONNECT_TIMEOUT) {
      FUNC2 (c, -6);
      return c->ready = cr_failed;
    }
    return c->ready = cr_notyet;
  }
  FUNC1 (c->status != conn_connecting);

  if (c->last_query_sent_time < precise_now - rpc_ping_interval) {
    FUNC5 (c, FUNC4());
    c->last_query_sent_time = precise_now;
  }

  FUNC1 (c->last_response_time != 0);
  if (c->last_response_time < precise_now - RPC_FAIL_INTERVAL) {
    if (verbosity > 1 && c->ready != cr_failed) {
      FUNC3 (stderr, "changing connection %d readiness from %ld to %ld [FAILED] lq=%.03f lr=%.03f now=%.03f\n", c->fd, c->ready, cr_failed, c->last_query_sent_time, c->last_response_time, precise_now);
    }
    FUNC2 (c, -5);
    return c->ready = cr_failed;
  }

  if (c->last_response_time < precise_now - RPC_STOP_INTERVAL) {
    if (verbosity > 1 && c->ready != cr_stopped) {
      FUNC3 (stderr, "changing connection %d readiness from %ld to %ld [STOPPED] lq=%.03f lr=%.03f now=%.03f\n", c->fd, c->ready, cr_stopped, c->last_query_sent_time, c->last_response_time, precise_now);
    }
    return c->ready = cr_stopped;
  }

  if (c->status == conn_wait_answer || c->status == conn_expect_query || c->status == conn_reading_answer) {
    if (verbosity > 1 && c->ready != cr_ok) {
      FUNC3 (stderr, "changing connection %d readiness from %ld to %ld [OK] lq=%.03f lr=%.03f now=%.03f\n", c->fd, c->ready, cr_ok, c->last_query_sent_time, c->last_response_time, precise_now);
    }
    return c->ready = cr_ok;
  }

  if (c->status == conn_running) {
    if (verbosity > 1 && c->ready != cr_busy) {
      FUNC3 (stderr, "changing connection %d readiness from %ld to %ld [BUSY] lq=%.03f lr=%.03f now=%.03f\n", c->fd, c->ready, cr_busy, c->last_query_sent_time, c->last_response_time, precise_now);
    }
    return c->ready = cr_busy;
  }

  FUNC1 (0);
  return c->ready = cr_failed;
}