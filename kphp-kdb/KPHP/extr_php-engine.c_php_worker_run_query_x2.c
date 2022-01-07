
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int php_worker ;
struct TYPE_5__ {TYPE_3__* ans; } ;
struct TYPE_6__ {int val; TYPE_1__ base; } ;
typedef TYPE_2__ php_query_x2_t ;
struct TYPE_7__ {int x2; } ;
typedef TYPE_3__ php_query_x2_answer_t ;


 int php_script ;
 int php_script_query_answered (int ) ;
 int php_script_query_readed (int ) ;

void php_worker_run_query_x2 (php_worker *worker, php_query_x2_t *query) {
  php_script_query_readed (php_script);




  static php_query_x2_answer_t res;
  res.x2 = query->val * query->val;

  query->base.ans = &res;

  php_script_query_answered (php_script);
}
