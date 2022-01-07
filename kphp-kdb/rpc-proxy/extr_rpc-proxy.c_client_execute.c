
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct rpc_query {int dummy; } ;
struct TYPE_6__ {TYPE_1__* h; int (* fail_query ) (int ,int ,int ) ;} ;
struct TYPE_5__ {scalar_t__ op; int qid; } ;


 TYPE_4__* CQ ;
 scalar_t__ RPC_REQ_ERROR ;
 scalar_t__ RPC_REQ_ERROR_WRAPPED ;
 struct rpc_query* get_rpc_query (int ) ;
 int query_on_answer (struct rpc_query*) ;
 int received_answers ;
 int received_bad_answers ;
 int received_errors ;
 int received_expired_answers ;
 int skipped_answers ;
 int stub1 (int ,int ,int ) ;
 int stub2 (int ,int ,int ) ;
 scalar_t__ tl_fetch_query_answer_header (TYPE_1__*) ;
 int tl_query_header_delete (TYPE_1__*) ;
 int vkprintf (int,char*,...) ;
 TYPE_1__* zmalloc (int) ;

void client_execute (void) {
  if (CQ->h) {
    tl_query_header_delete (CQ->h);
    CQ->h = 0;
  }
  CQ->h = zmalloc (sizeof (*(CQ->h)));
  if (tl_fetch_query_answer_header (CQ->h) < 0) {
    received_bad_answers ++;
    vkprintf (3, "Can not fetch header\n");
    skipped_answers ++;
    CQ->fail_query (0, 0, 0);
    return;
  }
  if (CQ->h->op == RPC_REQ_ERROR || CQ->h->op == RPC_REQ_ERROR_WRAPPED) { received_errors ++; }
  else { received_answers ++; }

  struct rpc_query *q = get_rpc_query (CQ->h->qid);
  if (!q) {
    received_expired_answers ++;
    skipped_answers ++;
    CQ->fail_query (0, 0, 0);
    vkprintf (3, "Answer for unknown query (qid = %lld)\n", CQ->h->qid);
  } else {
    query_on_answer (q);
    vkprintf (3, "Query end\n");
  }
}
