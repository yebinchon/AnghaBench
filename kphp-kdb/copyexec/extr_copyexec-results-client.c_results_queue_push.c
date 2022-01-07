
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct results_queue_entry {int dummy; } ;


 size_t RESULTS_QUEUE_SIZE ;
 struct results_queue_entry* RQ ;
 size_t rq_right ;
 size_t rq_size ;

struct results_queue_entry *results_queue_push (void) {
  if (rq_size >= RESULTS_QUEUE_SIZE) {
    return ((void*)0);
  }
  struct results_queue_entry *R = &RQ[rq_right];
  if (++rq_right == RESULTS_QUEUE_SIZE) {
    rq_right = 0;
  }
  rq_size++;
  return R;
}
