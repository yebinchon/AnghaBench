
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int php_worker ;
struct TYPE_2__ {void* ans; } ;
typedef TYPE_1__ php_query_base_t ;


 int assert (int) ;
 int php_script ;
 scalar_t__ php_script_get_query (int ) ;
 int php_script_query_answered (int ) ;

void php_worker_answer_query (php_worker *worker, void *ans) {
  assert (worker != ((void*)0) && ans != ((void*)0));
  php_query_base_t *q_base = (php_query_base_t *)php_script_get_query (php_script);
  q_base->ans = ans;
  php_script_query_answered (php_script);
}
