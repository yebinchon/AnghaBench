#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ h_idx; } ;
struct udp_target {int received_prefix; int max_confirmed; int flags; TYPE_1__ confirm_timer; TYPE_1__ rx_timer; TYPE_1__ tx_timer; scalar_t__ window_queue; scalar_t__ out_queue; int /*<<< orphan*/  tx_timeout; int /*<<< orphan*/  rx_timeout; scalar_t__ proto_version; scalar_t__ unack_size; scalar_t__ window_size; scalar_t__ last_ack; scalar_t__ send_num; scalar_t__ aes_ctx_initialized; int /*<<< orphan*/  sent; int /*<<< orphan*/  constructors; void* received_tree; void* confirm_tree; } ;
struct tmp_msg {TYPE_4__* msg; } ;
struct raw_message {int dummy; } ;
struct process_id {int dummy; } ;
struct TYPE_8__ {struct raw_message raw; } ;
struct TYPE_7__ {struct raw_message x; } ;
struct TYPE_6__ {struct tmp_msg x; } ;

/* Variables and functions */
 int /*<<< orphan*/  RX_TIMEOUT ; 
 int /*<<< orphan*/  TX_TIMEOUT ; 
 int UDP_ALLOW_ENC ; 
 int UDP_ALLOW_UNENC ; 
 int /*<<< orphan*/  __clear_udp_msg_constructor ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 TYPE_3__* FUNC3 (scalar_t__) ; 
 TYPE_2__* FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (struct raw_message*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC9 (void*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  udp_msg_free ; 
 int /*<<< orphan*/  FUNC12 (struct udp_target*,struct process_id*,int) ; 

void FUNC13 (struct udp_target *S, struct process_id *pid, int generation) {
  FUNC12 (S, pid, generation);
  S->received_prefix = -1;
  S->confirm_tree = FUNC9 (S->confirm_tree);  
  S->received_tree = FUNC9 (S->received_tree);
  FUNC8 (S->constructors, __clear_udp_msg_constructor);
  S->constructors = FUNC11 (S->constructors);
  FUNC7 (S->sent, udp_msg_free);
  S->sent = FUNC10 (S->sent);
  S->aes_ctx_initialized = 0;
  S->send_num = 0;
  S->last_ack = 0;
  S->max_confirmed = -1;
  S->window_size = 0;
  S->flags = UDP_ALLOW_UNENC | UDP_ALLOW_ENC;
  S->unack_size = 0;
  S->proto_version = 0;
  
  S->rx_timeout = RX_TIMEOUT;
  S->tx_timeout = TX_TIMEOUT;

  while (S->out_queue) {
    struct raw_message raw = FUNC3 (S->out_queue)->x;
    FUNC6 (&raw);
    S->out_queue = FUNC1 (S->out_queue);
  }

  while (S->window_queue) {
    struct tmp_msg x = FUNC4 (S->window_queue)->x;
    FUNC6 (&x.msg->raw);
    FUNC0 (x.msg);    
    S->window_queue = FUNC2 (S->window_queue);
  }

  if (S->tx_timer.h_idx) {
    FUNC5 (&S->tx_timer);
  }
  if (S->rx_timer.h_idx) {
    FUNC5 (&S->rx_timer);
  }
  if (S->confirm_timer.h_idx) {
    FUNC5 (&S->confirm_timer);
  }
}