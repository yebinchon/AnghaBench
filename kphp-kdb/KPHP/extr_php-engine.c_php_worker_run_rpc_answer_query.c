
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct connection {int dummy; } ;
struct TYPE_5__ {scalar_t__ mode; int req_id; struct connection* conn; } ;
typedef TYPE_1__ php_worker ;
struct TYPE_6__ {int data_len; scalar_t__ data; } ;
typedef TYPE_2__ php_query_rpc_answer ;


 int RPC_REQ_ERROR ;
 int RPC_REQ_RESULT ;
 int php_script ;
 int php_script_query_answered (int ) ;
 int php_script_query_readed (int ) ;
 scalar_t__ rpc_worker ;
 int send_rpc_query (struct connection*,int ,int ,int*,int) ;
 int vkprintf (int,char*,int,int ) ;

void php_worker_run_rpc_answer_query (php_worker *worker, php_query_rpc_answer *ans) {
  if (worker->mode == rpc_worker) {
    struct connection *c = worker->conn;
    int *q = (int *)ans->data;
    int qn = ans->data_len;

    vkprintf (2, "going to send %d bytes as an answer [req_id = %016llx]\n", qn, worker->req_id);
    send_rpc_query (c, q[2] == 0 ? RPC_REQ_RESULT : RPC_REQ_ERROR, worker->req_id, q, qn);
  }
  php_script_query_readed (php_script);
  php_script_query_answered (php_script);
}
