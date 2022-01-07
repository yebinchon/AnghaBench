
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct results_queue_entry {int dummy; } ;


 struct results_queue_entry* RQ ;
 size_t rq_left ;
 int rq_size ;

struct results_queue_entry *results_queue_front (void) {
  if (!rq_size) {
    return ((void*)0);
  }
  return &RQ[rq_left];
}
