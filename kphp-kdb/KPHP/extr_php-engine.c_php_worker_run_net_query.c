
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int php_worker ;
struct TYPE_3__ {int type; } ;
typedef TYPE_1__ php_query_base_t ;
typedef int php_net_query_packet_t ;



 int assert (int ) ;
 int php_worker_run_net_query_packet (int *,int *) ;

void php_worker_run_net_query (php_worker *worker, php_query_base_t *q_base) {
  switch (q_base->type & 0xFFFF) {
    case 128:
      php_worker_run_net_query_packet (worker, (php_net_query_packet_t *)q_base);
      break;
    default:
      assert ("unknown net_query type"&& 0);
  }
}
