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
struct connection {scalar_t__ status; double last_response_time; double last_query_sent_time; int unreliability; int ready; int fd; double last_query_timeout; int flags; } ;
struct TYPE_2__ {scalar_t__ in_packet_num; } ;

/* Variables and functions */
 double CONNECT_TIMEOUT ; 
 int C_FAILED ; 
 double FAIL_INTERVAL ; 
 TYPE_1__* FUNC0 (struct connection*) ; 
 double STOP_INTERVAL ; 
 scalar_t__ conn_connecting ; 
 scalar_t__ conn_reading_answer ; 
 scalar_t__ conn_wait_answer ; 
 int cr_failed ; 
 int cr_notyet ; 
 scalar_t__ cr_ok ; 
 scalar_t__ cr_stopped ; 
 int /*<<< orphan*/  FUNC1 (struct connection*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int,int,scalar_t__,double,double,double,double,double,int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct connection*,int /*<<< orphan*/ ) ; 
 double ping_interval ; 
 double precise_now ; 
 int /*<<< orphan*/  stderr ; 
 int verbosity ; 

int FUNC5 (struct connection *c) {
  double first_query_time = 0;
  double adj_precise_now = precise_now;

  if (c->status == conn_connecting || (c->last_response_time == 0 && (c->status == conn_wait_answer || c->status == conn_reading_answer)) ||  FUNC0(c)->in_packet_num < 0) {
    if (c->last_query_sent_time < adj_precise_now - CONNECT_TIMEOUT) {
      FUNC1 (c, -6);
      return cr_failed;
    }
    return cr_notyet;
  }
  if (c->last_query_sent_time < adj_precise_now - ping_interval) {
    FUNC4 (c, FUNC3 ());
    c->last_query_sent_time = precise_now;
  }

  if (c->last_response_time < adj_precise_now - FAIL_INTERVAL || c->unreliability > 5000) {
    if (verbosity > 1 && c->ready != cr_failed) {
      FUNC2 (stderr, "changing connection %d readiness from %d to %ld [FAILED] fq=%.03f lq=%.03f lqt=%.03f lr=%.03f now=%.03f unr=%d\n", c->fd, c->ready, cr_failed, first_query_time, c->last_query_sent_time, c->last_query_timeout, c->last_response_time, precise_now, c->unreliability);
    }
    FUNC1 (c, -5);
    return c->ready = cr_failed;
  }

  if (c->last_response_time < adj_precise_now - STOP_INTERVAL || c->unreliability > 2000) {
    if (verbosity > 1 && c->ready != cr_stopped) {
      FUNC2 (stderr, "changing connection %d readiness from %d to %ld [STOPPED] fq=%.03f lq=%.03f lqt=%.03f lr=%.03f now=%.03f unr=%d\n", c->fd, c->ready, cr_stopped, first_query_time, c->last_query_sent_time, c->last_query_timeout, c->last_response_time, precise_now, c->unreliability);
    }
    return c->ready = cr_stopped;
  }
    
  if (!(c->flags & C_FAILED) && c->last_response_time > 0 && (c->status == conn_wait_answer || c->status == conn_reading_answer)) {
    if (verbosity > 1 && c->ready != cr_ok) {
      FUNC2 (stderr, "changing connection %d readiness from %d to %ld [OK] fq=%.03f lq=%.03f lqt=%.03f lr=%.03f now=%.03f unr=%d\n", c->fd, c->ready, cr_ok, first_query_time, c->last_query_sent_time, c->last_query_timeout, c->last_response_time, precise_now, c->unreliability);
    }
    return c->ready = cr_ok;
  }

  return c->ready = cr_failed;
}