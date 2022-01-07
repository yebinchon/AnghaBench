
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hts_data {int * extra; } ;
struct connection {scalar_t__ status; } ;
typedef int php_worker ;


 struct hts_data* HTS_DATA (struct connection*) ;
 int assert (int) ;
 scalar_t__ conn_expect_query ;
 scalar_t__ conn_wait_net ;
 int hts_at_query_end (struct connection*,int) ;
 int php_worker_main (int *) ;
 int php_worker_terminate (int *,int ,char*) ;

int hts_func_alarm (struct connection *c) {
  struct hts_data *D = HTS_DATA(c);



  assert (c->status == conn_expect_query || c->status == conn_wait_net);
  c->status = conn_expect_query;

  php_worker *worker = D->extra;
  php_worker_terminate (worker, 0, "http connection alarm");
  int res = php_worker_main (worker);
  if (res == 1) {
    hts_at_query_end (c, 1);
  } else {
    assert ("worker is unfinished after alarm" && 0);
  }
  return 0;
}
