
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tl_query_header {int op; int qid; } ;
struct connection {int In; } ;


 int RPC_INVOKE_REQ ;
 int SKIP_ALL_BYTES ;
 int WaitAioArrClear () ;
 int __tl_query_act (struct tl_query_header*) ;
 scalar_t__ advance_skip_read_ptr (int *,scalar_t__) ;
 int assert (int) ;
 scalar_t__ tl_fetch_error () ;
 int tl_fetch_init (struct connection*,int) ;
 int tl_fetch_query_header (struct tl_query_header*) ;
 scalar_t__ tl_fetch_unread () ;
 int tl_store_init_keep_error (struct connection*,int ) ;
 struct tl_query_header* zmalloc (int) ;

int tl_query_act (struct connection *c, int op, int len) {
  if (op != RPC_INVOKE_REQ) {
    return SKIP_ALL_BYTES;
  }



  WaitAioArrClear ();
  tl_fetch_init (c, len - 4);
  struct tl_query_header *h = zmalloc (sizeof (*h));
  tl_fetch_query_header (h);
  tl_store_init_keep_error (c, h->qid);
  assert (h->op == op || tl_fetch_error ());

  __tl_query_act (h);
  assert (advance_skip_read_ptr (&c->In, 4 + tl_fetch_unread ()) == 4 + tl_fetch_unread ());
  return 0;
}
