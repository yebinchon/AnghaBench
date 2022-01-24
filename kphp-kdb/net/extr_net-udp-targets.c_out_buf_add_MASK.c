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
struct TYPE_2__ {int /*<<< orphan*/  h_idx; } ;
struct udp_target {int send_num; int max_confirmed; TYPE_1__ tx_timer; int /*<<< orphan*/  sent; } ;
struct udp_msg {int prev_next; scalar_t__ msg_num; int /*<<< orphan*/  raw; void* S; } ;
struct raw_message {scalar_t__ total_bytes; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct raw_message*,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int out_buf_next ; 
 scalar_t__ out_buf_next_last ; 
 int out_buf_prev ; 
 scalar_t__ out_buf_prev_last ; 
 void* out_buf_target ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct raw_message*) ; 
 int /*<<< orphan*/  FUNC4 (struct udp_target*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct udp_msg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int,char*,scalar_t__) ; 
 struct udp_msg* FUNC7 (int) ; 

void FUNC8 (struct raw_message *raw) {
  FUNC1 (raw->total_bytes > 0);
  struct udp_msg *msg = FUNC7 (sizeof (*msg));
  struct udp_target *S = out_buf_target;
  msg->S = out_buf_target;
  msg->msg_num = S->send_num ++;
  FUNC3 (&msg->raw, raw);
  int prev = (out_buf_prev_last ? out_buf_prev : 0);
  int next = out_buf_next_last ? out_buf_next : 0;
  msg->prev_next = ((prev * 1ll) << 32) + next;
  out_buf_prev_last = 0;
  out_buf_next_last = 0;
  S->sent = FUNC5 (S->sent, msg, FUNC2 ());
  FUNC6 (4, "S->sent: added number %d\n", msg->msg_num);
  if (S->send_num - 2 == S->max_confirmed) {
    if (!S->tx_timer.h_idx) {
      FUNC4 (S);
    }
  }

  FUNC0 (raw, S->send_num - 1);
}