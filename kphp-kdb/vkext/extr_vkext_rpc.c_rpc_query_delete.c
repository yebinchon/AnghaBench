
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_query {scalar_t__ qid; int (* extra_free ) (struct rpc_query*) ;int answer_len; scalar_t__ answer; } ;


 int delete_query_from_queue (struct rpc_query*) ;
 int stub1 (struct rpc_query*) ;
 int total_working_qid ;
 int zzefree (scalar_t__,int ) ;

__attribute__((used)) static void rpc_query_delete (struct rpc_query *q) {

  if (q->answer) {
    zzefree (q->answer, q->answer_len);
  }
  delete_query_from_queue (q);
  if (q->extra_free) {
    q->extra_free (q);
  }
  q->qid = 0;

  total_working_qid --;

}
