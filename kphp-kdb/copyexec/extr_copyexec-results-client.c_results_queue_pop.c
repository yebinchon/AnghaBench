
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct results_queue_entry {int dummy; } ;


 size_t RESULTS_QUEUE_SIZE ;
 struct results_queue_entry* RQ ;
 size_t rq_left ;
 int rq_size ;

struct results_queue_entry *results_queue_pop (void) {
  if (!rq_size) {
    return ((void*)0);
  }
  struct results_queue_entry *R = &RQ[rq_left];
  if (++rq_left == RESULTS_QUEUE_SIZE) {
    rq_left = 0;
  }
  rq_size--;
  return R;
}
