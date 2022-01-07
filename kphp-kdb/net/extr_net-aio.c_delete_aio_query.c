
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct conn_query {scalar_t__ start_time; } ;


 int CLOCK_MONOTONIC ;
 int active_aio_queries ;
 int delete_conn_query (struct conn_query*) ;
 int fprintf (int ,char*,struct conn_query*,double) ;
 double get_utime (int ) ;
 int stderr ;
 double total_aio_time ;
 int verbosity ;
 int zfree (struct conn_query*,int) ;

int delete_aio_query (struct conn_query *q) {
  if (q->start_time > 0) {
    double q_time = get_utime (CLOCK_MONOTONIC) - q->start_time;
    total_aio_time += q_time;
    if (verbosity > 1) {
      fprintf (stderr, "delete_aio_query(%p): query time %.6f\n", q, q_time);
    }
  }
  active_aio_queries--;
  delete_conn_query (q);
  zfree (q, sizeof (*q));
  return 0;
}
