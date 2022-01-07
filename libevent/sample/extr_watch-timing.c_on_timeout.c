
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int evutil_socket_t ;


 int delays ;
 int durations ;
 double histogram_query (int ,double) ;
 int printf (char*,double,double,double,double) ;

__attribute__((used)) static void
on_timeout(evutil_socket_t fd, short events, void *arg)
{
 printf("durations: [p50 = %fs, p95 = %fs], delays: [p50 = %fs, p95 = %fs]\n",
  histogram_query(durations, 0.5),
  histogram_query(durations, 0.95),
  histogram_query(delays, 0.5),
  histogram_query(delays, 0.95));
}
