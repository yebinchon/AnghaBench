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
typedef  int /*<<< orphan*/  uv_timer_t ;
typedef  int /*<<< orphan*/  uv_loop_t ;
typedef  int /*<<< orphan*/  uv_handle_t ;
typedef  double uint64_t ;
struct sockaddr_in {int dummy; } ;
struct sockaddr {int dummy; } ;
struct sender_state {struct sockaddr_in addr; int /*<<< orphan*/  udp_handle; int /*<<< orphan*/  send_req; } ;
struct receiver_state {struct sockaddr_in addr; int /*<<< orphan*/  udp_handle; int /*<<< orphan*/  send_req; } ;

/* Variables and functions */
 unsigned int FUNC0 (struct sender_state*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ BASE_PORT ; 
 scalar_t__ EXPECTED ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  UV_RUN_DEFAULT ; 
 int /*<<< orphan*/  alloc_cb ; 
 struct sender_state* bufs ; 
 unsigned int n_receivers_ ; 
 unsigned int n_senders_ ; 
 int /*<<< orphan*/  FUNC3 (char*,unsigned int,unsigned int,double,double,double,double,double) ; 
 struct sender_state* receivers ; 
 int /*<<< orphan*/  recv_cb ; 
 double recv_cb_called ; 
 int /*<<< orphan*/  send_cb ; 
 double send_cb_called ; 
 struct sender_state* senders ; 
 int timed ; 
 int /*<<< orphan*/  timeout_cb ; 
 struct sender_state FUNC4 (scalar_t__,int) ; 
 int /*<<< orphan*/ * FUNC5 () ; 
 double FUNC6 () ; 
 scalar_t__ FUNC7 (char*,scalar_t__,struct sockaddr_in*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *,struct sockaddr const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct sender_state*,unsigned int,struct sockaddr const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC16(unsigned int n_senders,
                  unsigned int n_receivers,
                  unsigned long timeout) {
  uv_timer_t timer_handle;
  uint64_t duration;
  uv_loop_t* loop;
  unsigned int i;

  FUNC1(n_senders <= FUNC0(senders));
  FUNC1(n_receivers <= FUNC0(receivers));

  loop = FUNC5();

  n_senders_ = n_senders;
  n_receivers_ = n_receivers;

  if (timeout) {
    FUNC1(0 == FUNC9(loop, &timer_handle));
    FUNC1(0 == FUNC10(&timer_handle, timeout_cb, timeout, 0));
    /* Timer should not keep loop alive. */
    FUNC15((uv_handle_t*)&timer_handle);
    timed = 1;
  }

  for (i = 0; i < n_receivers; i++) {
    struct receiver_state* s = receivers + i;
    struct sockaddr_in addr;
    FUNC1(0 == FUNC7("0.0.0.0", BASE_PORT + i, &addr));
    FUNC1(0 == FUNC12(loop, &s->udp_handle));
    FUNC1(0 == FUNC11(&s->udp_handle, (const struct sockaddr*) &addr, 0));
    FUNC1(0 == FUNC13(&s->udp_handle, alloc_cb, recv_cb));
    FUNC15((uv_handle_t*)&s->udp_handle);
  }

  bufs[0] = FUNC4(EXPECTED + 0,  10);
  bufs[1] = FUNC4(EXPECTED + 10, 10);
  bufs[2] = FUNC4(EXPECTED + 20, 10);
  bufs[3] = FUNC4(EXPECTED + 30, 10);
  bufs[4] = FUNC4(EXPECTED + 40, 5);

  for (i = 0; i < n_senders; i++) {
    struct sender_state* s = senders + i;
    FUNC1(0 == FUNC7("127.0.0.1",
                            BASE_PORT + (i % n_receivers),
                            &s->addr));
    FUNC1(0 == FUNC12(loop, &s->udp_handle));
    FUNC1(0 == FUNC14(&s->send_req,
                            &s->udp_handle,
                            bufs,
                            FUNC0(bufs),
                            (const struct sockaddr*) &s->addr,
                            send_cb));
  }

  duration = FUNC6();
  FUNC1(0 == FUNC8(loop, UV_RUN_DEFAULT));
  duration = FUNC6() - duration;
  /* convert from nanoseconds to milliseconds */
  duration = duration / (uint64_t) 1e6;

  FUNC3("udp_pummel_%dv%d: %.0f/s received, %.0f/s sent. "
         "%u received, %u sent in %.1f seconds.\n",
         n_receivers,
         n_senders,
         recv_cb_called / (duration / 1000.0),
         send_cb_called / (duration / 1000.0),
         recv_cb_called,
         send_cb_called,
         duration / 1000.0);

  FUNC2();
  return 0;
}