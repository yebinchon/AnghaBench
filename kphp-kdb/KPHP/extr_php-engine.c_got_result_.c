
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct conn_query {int dummy; } ;
struct TYPE_2__ {struct conn_query* first_query; } ;


 int assert (int) ;
 long long cur_request_id ;
 TYPE_1__ dummy_request_queue ;
 int net_get_query_done (struct conn_query*) ;
 int vkprintf (int,char*,long long,long long) ;

void got_result_ (long long request_id) {
  vkprintf (2, "got_result [rpc_id = <%lld>], wait for [rpc_id = <%lld>]\n", request_id, cur_request_id);
  if (cur_request_id != request_id) {
    return;
  }

  cur_request_id = -1;

  while (dummy_request_queue.first_query != (struct conn_query *)&dummy_request_queue) {
    struct conn_query *q = dummy_request_queue.first_query;
    net_get_query_done (q);
    assert (dummy_request_queue.first_query != q);
  }
}
