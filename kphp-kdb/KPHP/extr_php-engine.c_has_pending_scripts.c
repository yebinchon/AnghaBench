
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct conn_query {int dummy; } ;
struct TYPE_2__ {struct conn_query* first_query; } ;


 TYPE_1__ pending_http_queue ;
 scalar_t__ php_worker_run_flag ;

int has_pending_scripts() {
  return php_worker_run_flag || pending_http_queue.first_query != (struct conn_query *)&pending_http_queue;
}
