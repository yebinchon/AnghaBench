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
struct udp_target {int send_num; int max_confirmed; scalar_t__ window_size; int flags; struct tree_udp_msg* sent; int /*<<< orphan*/  last_ack; scalar_t__ resend_state; } ;
struct tree_udp_msg {int dummy; } ;

/* Variables and functions */
 scalar_t__ START_WINDOW_SIZE ; 
 int UDP_WAIT ; 
 struct udp_target* __S ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  precise_now ; 
 int /*<<< orphan*/  FUNC1 (struct udp_target*) ; 
 int /*<<< orphan*/  FUNC2 (struct udp_target*) ; 
 int /*<<< orphan*/  FUNC3 (struct tree_udp_msg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct tree_udp_msg*) ; 
 struct tree_udp_msg* FUNC5 (struct tree_udp_msg*,struct tree_udp_msg*) ; 
 int /*<<< orphan*/  FUNC6 (struct tree_udp_msg**,struct tree_udp_msg**,struct tree_udp_msg*,void*) ; 
 int /*<<< orphan*/  udp_msg_confirm_free ; 
 int /*<<< orphan*/  FUNC7 (struct udp_target*) ; 
 int /*<<< orphan*/  FUNC8 (int,char*,int,int) ; 

void FUNC9 (struct udp_target *S, int x, int y) {
  if (y >= S->send_num) {
    return;
  }
  if (y > S->max_confirmed) {
    FUNC2 (S);
    S->max_confirmed = y;
    FUNC0 (y < S->send_num);
    if (y != S->send_num - 1) {
      FUNC1 (S);
    }
    S->resend_state = 0;
  }
  S->last_ack = precise_now;
  struct tree_udp_msg *L, *R, *M1, *M2;
  FUNC6 (&M1, &R, S->sent, (void *)&y);
  x--;
  FUNC6 (&L, &M2, M1, (void *)&x);

  S->sent = FUNC5 (L, R);
  __S = S;
  FUNC3 (M2, udp_msg_confirm_free);
  FUNC4 (M2);
  FUNC8 (4, "S->sent: delete messages in range [%d, %d]\n", x, y);
  if (S->window_size <= START_WINDOW_SIZE && (S->flags & UDP_WAIT)) {
    FUNC7 (S);
  }
}