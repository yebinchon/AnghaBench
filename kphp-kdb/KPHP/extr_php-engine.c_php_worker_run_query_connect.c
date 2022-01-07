
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int php_worker ;
struct TYPE_5__ {TYPE_3__* ans; } ;
struct TYPE_6__ {int protocol; TYPE_1__ base; int port; int host; } ;
typedef TYPE_2__ php_query_connect_t ;
struct TYPE_7__ {void* connection_id; } ;
typedef TYPE_3__ php_query_connect_answer_t ;


 int assert (int ) ;
 int default_ct ;
 void* get_target (int ,int ,int *) ;



 int php_script ;
 int php_script_query_answered (int ) ;
 int php_script_query_readed (int ) ;
 int rpc_ct ;
 void* sql_target_id ;

void php_worker_run_query_connect (php_worker *worker, php_query_connect_t *query) {
  php_script_query_readed (php_script);

  static php_query_connect_answer_t res;

  switch (query->protocol) {
    case 130:
      res.connection_id = get_target (query->host, query->port, &default_ct);
      break;
    case 128:
      res.connection_id = sql_target_id;
      break;
    case 129:
      res.connection_id = get_target (query->host, query->port, &rpc_ct);
      break;
    default:
      assert ("unknown protocol" && 0);
  }

  query->base.ans = &res;

  php_script_query_answered (php_script);
}
