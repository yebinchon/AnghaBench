#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ total_bytes; } ;
struct connection {scalar_t__ status; int fd; int error; int ready; int flags; scalar_t__ last_query_sent_time; scalar_t__ last_query_time; scalar_t__ last_response_time; TYPE_1__ In; } ;
struct TYPE_4__ {int extra_flags; int response_state; scalar_t__ auth_state; } ;

/* Variables and functions */
 int C_FAILED ; 
 scalar_t__ RESPONSE_FAIL_TIMEOUT ; 
 TYPE_2__* FUNC0 (struct connection*) ; 
 scalar_t__ conn_error ; 
 scalar_t__ conn_reading_answer ; 
 scalar_t__ conn_ready ; 
 scalar_t__ conn_wait_answer ; 
 int cr_busy ; 
 int cr_failed ; 
 int cr_ok ; 
 int cr_stopped ; 
 int /*<<< orphan*/  FUNC1 (struct connection*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int,scalar_t__,...) ; 
 scalar_t__ precise_now ; 
 scalar_t__ sql_auth_ok ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ verbosity ; 

int FUNC3 (struct connection *c) {
  if (c->status == conn_ready && c->In.total_bytes > 0) {
    FUNC2 (stderr, "have %d bytes in outbound sql connection %ld in state ready, closing connection\n", c->In.total_bytes, c->fd);
    c->status = conn_error;
    c->error = -3;
    FUNC1 (c, -3);
    return c->ready = cr_failed;
  }
  if (c->status == conn_error) {
    c->error = -4;
    FUNC1 (c, -4);
    return c->ready = cr_failed;
  }
  if (c->status == conn_wait_answer || c->status == conn_reading_answer) {
    if (!(c->flags & C_FAILED) && c->last_query_sent_time < precise_now - RESPONSE_FAIL_TIMEOUT - c->last_query_time && c->last_response_time < precise_now - RESPONSE_FAIL_TIMEOUT - c->last_query_time && !(FUNC0(c)->extra_flags & 1)) {
      if (verbosity > 0) {
        FUNC2 (stderr, "failing outbound connection %d, status=%ld, response_status=%d, last_response=%.6ld, last_query=%.6ld, now=%.6ld\n", c->fd, c->status, FUNC0(c)->response_state, c->last_response_time, c->last_query_sent_time, precise_now);
      }
      c->error = -5;
      FUNC1 (c, -5);
      return c->ready = cr_failed;
    }
  }
  return c->ready = (c->status == conn_ready ? cr_ok : (FUNC0(c)->auth_state == sql_auth_ok ? cr_stopped : cr_busy));  /* was cr_busy instead of cr_stopped */
}