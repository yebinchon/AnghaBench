
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct hts_data {TYPE_1__* extra; } ;
struct connection {scalar_t__ status; scalar_t__ pending_queries; } ;
struct TYPE_4__ {scalar_t__ finish_time; } ;
typedef TYPE_1__ php_worker ;


 struct hts_data* HTS_DATA (struct connection*) ;
 int assert (int) ;
 scalar_t__ conn_expect_query ;
 scalar_t__ conn_wait_net ;
 int hts_at_query_end (struct connection*,int) ;
 int php_worker_main (TYPE_1__*) ;
 int php_worker_terminate (TYPE_1__*,int ,char*) ;
 scalar_t__ precise_now ;

int hts_func_wakeup (struct connection *c) {
  struct hts_data *D = HTS_DATA(c);

  assert (c->status == conn_expect_query || c->status == conn_wait_net);
  c->status = conn_expect_query;

  php_worker *worker = D->extra;
  if (worker->finish_time < precise_now + 0.01) {
    php_worker_terminate (worker, 0, "timeout in http connection wakeup");
  }
  int res = php_worker_main (worker);
  if (res == 1) {
    hts_at_query_end (c, 1);
  } else {
    assert (c->pending_queries >= 0 && c->status == conn_wait_net);
  }
  return 0;
}
