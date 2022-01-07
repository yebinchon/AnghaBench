
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int total_bytes; } ;
struct udp_msg {int S; TYPE_1__ raw; } ;
struct tl_query_header {scalar_t__ op; int qid; } ;
struct raw_message {int dummy; } ;


 scalar_t__ RPC_INVOKE_REQ ;
 int WaitAioArrClear () ;
 int __tl_query_act (struct tl_query_header*) ;
 int assert (int ) ;
 int rwm_clone (struct raw_message*,TYPE_1__*) ;
 int rwm_free (struct raw_message*) ;
 int tl_fetch_init_raw_message (struct raw_message*,int ) ;
 int tl_fetch_query_header (struct tl_query_header*) ;
 int tl_store_init_raw_msg_keep_error (int ,int ) ;
 struct tl_query_header* zmalloc (int) ;

int tl_query_act_udp (struct udp_msg *msg) {



  WaitAioArrClear ();
  struct raw_message r;
  rwm_clone (&r, &msg->raw);
  tl_fetch_init_raw_message (&r, msg->raw.total_bytes);
  rwm_free (&r);
  struct tl_query_header *h = zmalloc (sizeof (*h));
  tl_fetch_query_header (h);
  assert (msg->S);
  tl_store_init_raw_msg_keep_error (msg->S, h->qid);

  if (h->op != RPC_INVOKE_REQ) {
    return 0;
  }

  __tl_query_act (h);
  return 0;
}
