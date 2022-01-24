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
struct udp_target {TYPE_1__ confirm_timer; TYPE_1__ rx_timer; TYPE_1__ tx_timer; scalar_t__ window_queue; scalar_t__ out_queue; int /*<<< orphan*/  sent; int /*<<< orphan*/  constructors; void* received_tree; void* confirm_tree; scalar_t__ hash; } ;
struct tmp_msg {TYPE_4__* msg; } ;
struct raw_message {int dummy; } ;
struct TYPE_8__ {struct raw_message raw; } ;
struct TYPE_7__ {struct raw_message x; } ;
struct TYPE_6__ {struct tmp_msg x; } ;

/* Variables and functions */
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
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,struct udp_target*) ; 
 int /*<<< orphan*/  udp_msg_free ; 
 int /*<<< orphan*/  udp_target_by_hash ; 
 int /*<<< orphan*/  FUNC13 (struct udp_target*,int) ; 

void FUNC14 (struct udp_target *S) {
  if (S->hash) {
    udp_target_by_hash  = FUNC12 (udp_target_by_hash, S);
  }
  S->confirm_tree = FUNC9 (S->confirm_tree);
  S->received_tree = FUNC9 (S->received_tree);
  FUNC8 (S->constructors, __clear_udp_msg_constructor);
  S->constructors = FUNC11 (S->constructors);
  FUNC7 (S->sent, udp_msg_free);
  S->sent = FUNC10 (S->sent);

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
  FUNC13 (S, sizeof (*S));
}