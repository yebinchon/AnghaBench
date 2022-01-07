
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct query_stat {double max_time; double sum_time; int t; } ;



inline void update_query_stat (struct query_stat *S, double query_time) {
  S->t++;
  if (S->max_time < query_time) {
    S->max_time = query_time;
  }
  S->sum_time += query_time;
}
