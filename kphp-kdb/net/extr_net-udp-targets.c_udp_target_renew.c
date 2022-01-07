
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ h_idx; } ;
struct udp_target {int received_prefix; int max_confirmed; int flags; TYPE_1__ confirm_timer; TYPE_1__ rx_timer; TYPE_1__ tx_timer; scalar_t__ window_queue; scalar_t__ out_queue; int tx_timeout; int rx_timeout; scalar_t__ proto_version; scalar_t__ unack_size; scalar_t__ window_size; scalar_t__ last_ack; scalar_t__ send_num; scalar_t__ aes_ctx_initialized; int sent; int constructors; void* received_tree; void* confirm_tree; } ;
struct tmp_msg {TYPE_4__* msg; } ;
struct raw_message {int dummy; } ;
struct process_id {int dummy; } ;
struct TYPE_8__ {struct raw_message raw; } ;
struct TYPE_7__ {struct raw_message x; } ;
struct TYPE_6__ {struct tmp_msg x; } ;


 int RX_TIMEOUT ;
 int TX_TIMEOUT ;
 int UDP_ALLOW_ENC ;
 int UDP_ALLOW_UNENC ;
 int __clear_udp_msg_constructor ;
 int free (TYPE_4__*) ;
 scalar_t__ queue_del_first_raw_message (scalar_t__) ;
 scalar_t__ queue_del_first_tmp_msg (scalar_t__) ;
 TYPE_3__* queue_get_first_raw_message (scalar_t__) ;
 TYPE_2__* queue_get_first_tmp_msg (scalar_t__) ;
 int remove_event_timer (TYPE_1__*) ;
 int rwm_free (struct raw_message*) ;
 int tree_act_udp_msg (int ,int ) ;
 int tree_act_udp_msg_constructor (int ,int ) ;
 void* tree_clear_int (void*) ;
 int tree_clear_udp_msg (int ) ;
 int tree_clear_udp_msg_constructor (int ) ;
 int udp_msg_free ;
 int udp_target_update_pid (struct udp_target*,struct process_id*,int) ;

void udp_target_renew (struct udp_target *S, struct process_id *pid, int generation) {
  udp_target_update_pid (S, pid, generation);
  S->received_prefix = -1;
  S->confirm_tree = tree_clear_int (S->confirm_tree);
  S->received_tree = tree_clear_int (S->received_tree);
  tree_act_udp_msg_constructor (S->constructors, __clear_udp_msg_constructor);
  S->constructors = tree_clear_udp_msg_constructor (S->constructors);
  tree_act_udp_msg (S->sent, udp_msg_free);
  S->sent = tree_clear_udp_msg (S->sent);
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
    struct raw_message raw = queue_get_first_raw_message (S->out_queue)->x;
    rwm_free (&raw);
    S->out_queue = queue_del_first_raw_message (S->out_queue);
  }

  while (S->window_queue) {
    struct tmp_msg x = queue_get_first_tmp_msg (S->window_queue)->x;
    rwm_free (&x.msg->raw);
    free (x.msg);
    S->window_queue = queue_del_first_tmp_msg (S->window_queue);
  }

  if (S->tx_timer.h_idx) {
    remove_event_timer (&S->tx_timer);
  }
  if (S->rx_timer.h_idx) {
    remove_event_timer (&S->rx_timer);
  }
  if (S->confirm_timer.h_idx) {
    remove_event_timer (&S->confirm_timer);
  }
}
