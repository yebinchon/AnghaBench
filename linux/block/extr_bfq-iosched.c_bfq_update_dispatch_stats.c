
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {int dummy; } ;
struct request {int dummy; } ;
struct bfq_queue {int dummy; } ;



__attribute__((used)) static inline void bfq_update_dispatch_stats(struct request_queue *q,
          struct request *rq,
          struct bfq_queue *in_serv_queue,
          bool idle_timer_disabled) {}
