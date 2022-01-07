
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int php_worker ;
struct TYPE_5__ {TYPE_3__* ans; } ;
struct TYPE_6__ {TYPE_1__ base; int request_ids_len; int request_ids; } ;
typedef TYPE_2__ php_query_create_queue_t ;
struct TYPE_7__ {long long queue_id; } ;
typedef TYPE_3__ php_query_create_queue_answer_t ;


 long long create_qres_watchcat (int ,int ) ;
 int php_script ;
 int php_script_query_answered (int ) ;
 int php_script_query_readed (int ) ;

void php_worker_create_queue (php_worker *worker, php_query_create_queue_t *query) {
  php_script_query_readed (php_script);

  static php_query_create_queue_answer_t res;
  long long queue_id = create_qres_watchcat (query->request_ids, query->request_ids_len);
  res.queue_id = queue_id;

  query->base.ans = &res;

  php_script_query_answered (php_script);
}
