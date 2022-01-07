
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct connection {scalar_t__ generation; int * type; } ;
struct conn_query {scalar_t__ req_generation; scalar_t__ extra; struct connection* requester; } ;
struct TYPE_5__ {int ans; } ;
typedef TYPE_1__ net_ansgen_t ;
struct TYPE_8__ {void* extra; } ;
struct TYPE_7__ {void* extra; } ;
struct TYPE_6__ {void* extra; } ;


 TYPE_4__* HTS_DATA (struct connection*) ;
 TYPE_3__* RPCC_DATA (struct connection*) ;
 TYPE_2__* RPCS_DATA (struct connection*) ;
 int assert (int) ;
 int ct_php_engine_http_server ;
 int ct_php_engine_rpc_server ;
 int ct_php_rpc_client ;
 int php_worker_answer_query (void*,int ) ;

void pnet_query_answer (struct conn_query *q) {
  struct connection *req = q->requester;
  if (req != ((void*)0) && req->generation == q->req_generation) {
    void *extra = ((void*)0);
    if (req->type == &ct_php_engine_rpc_server) {
      extra = RPCS_DATA (req)->extra;
    } else if (req->type == &ct_php_rpc_client) {
      extra = RPCC_DATA (req)->extra;
    } else if (req->type == &ct_php_engine_http_server) {
      extra = HTS_DATA (req)->extra;
    } else {
      assert ("unexpected type of connection\n" && 0);
    }
    php_worker_answer_query (extra, ((net_ansgen_t *)(q->extra))->ans);
  }
}
