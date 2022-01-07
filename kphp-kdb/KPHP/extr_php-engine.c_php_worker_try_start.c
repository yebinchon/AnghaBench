
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct connection {int dummy; } ;
struct TYPE_5__ {int wakeup_time; } ;
struct conn_query {TYPE_1__ timer; int * cq_type; TYPE_2__* requester; struct connection* outbound; scalar_t__ custom_type; } ;
struct TYPE_7__ {int paused; int state; TYPE_2__* conn; int finish_time; int req_id; scalar_t__ terminate_flag; } ;
typedef TYPE_3__ php_worker ;
struct TYPE_6__ {int status; } ;


 int assert (int ) ;
 int conn_wait_net ;
 int insert_conn_query (struct conn_query*) ;
 int pending_cq_func ;
 int pending_http_queue ;
 int php_worker_run_flag ;
 int phpq_finish ;
 int phpq_init_script ;
 int vkprintf (int,char*,int ) ;
 struct conn_query* zmalloc (int) ;

void php_worker_try_start (php_worker *worker) {

  if (worker->terminate_flag) {
    worker->state = phpq_finish;
    return;
  }

  if (php_worker_run_flag) {
    vkprintf (2, "php script [req_id = %016llx] is waiting\n", worker->req_id);

    struct conn_query *pending_q = zmalloc (sizeof (struct conn_query));

    pending_q->custom_type = 0;
    pending_q->outbound = (struct connection *)&pending_http_queue;
    assert (worker->conn != ((void*)0));
    pending_q->requester = worker->conn;

    pending_q->cq_type = &pending_cq_func;
    pending_q->timer.wakeup_time = worker->finish_time;

    insert_conn_query (pending_q);

    worker->conn->status = conn_wait_net;

    worker->paused = 1;
    return;
  }

  php_worker_run_flag = 1;
  worker->state = phpq_init_script;
}
