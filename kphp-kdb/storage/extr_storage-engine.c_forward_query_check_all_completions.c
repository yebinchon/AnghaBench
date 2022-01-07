
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_forward_query {struct rpc_forward_query* next; } ;


 struct rpc_forward_query forward_queries ;
 scalar_t__ forward_query_check_completion (struct rpc_forward_query*,double) ;
 double get_utime_monotonic () ;
 int vkprintf (int,char*,int) ;

__attribute__((used)) static int forward_query_check_all_completions (void) {
  struct rpc_forward_query *q = forward_queries.next;
  if (q == &forward_queries) {
    return 0;
  }
  int sum = 0;
  double t = get_utime_monotonic ();
  while (q != &forward_queries) {
    struct rpc_forward_query *w = q->next;
    sum += forward_query_check_completion (q, t);
    q = w;
  }
  if (sum) {
    vkprintf (2, "forward_query_check_all_completion returns %d.\n", sum);
  }
  return sum;
}
