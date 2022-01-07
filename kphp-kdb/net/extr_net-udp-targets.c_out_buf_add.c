
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int h_idx; } ;
struct udp_target {int send_num; int max_confirmed; TYPE_1__ tx_timer; int sent; } ;
struct udp_msg {int prev_next; scalar_t__ msg_num; int raw; void* S; } ;
struct raw_message {scalar_t__ total_bytes; } ;


 int __out_buf_add (struct raw_message*,int) ;
 int assert (int) ;
 int lrand48 () ;
 int out_buf_next ;
 scalar_t__ out_buf_next_last ;
 int out_buf_prev ;
 scalar_t__ out_buf_prev_last ;
 void* out_buf_target ;
 int rwm_clone (int *,struct raw_message*) ;
 int start_tx_timer (struct udp_target*) ;
 int tree_insert_udp_msg (int ,struct udp_msg*,int ) ;
 int vkprintf (int,char*,scalar_t__) ;
 struct udp_msg* zmalloc (int) ;

void out_buf_add (struct raw_message *raw) {
  assert (raw->total_bytes > 0);
  struct udp_msg *msg = zmalloc (sizeof (*msg));
  struct udp_target *S = out_buf_target;
  msg->S = out_buf_target;
  msg->msg_num = S->send_num ++;
  rwm_clone (&msg->raw, raw);
  int prev = (out_buf_prev_last ? out_buf_prev : 0);
  int next = out_buf_next_last ? out_buf_next : 0;
  msg->prev_next = ((prev * 1ll) << 32) + next;
  out_buf_prev_last = 0;
  out_buf_next_last = 0;
  S->sent = tree_insert_udp_msg (S->sent, msg, lrand48 ());
  vkprintf (4, "S->sent: added number %d\n", msg->msg_num);
  if (S->send_num - 2 == S->max_confirmed) {
    if (!S->tx_timer.h_idx) {
      start_tx_timer (S);
    }
  }

  __out_buf_add (raw, S->send_num - 1);
}
