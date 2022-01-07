
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {int dummy; } ;
struct bfq_queue {int dummy; } ;



__attribute__((used)) static inline void bfq_update_insert_stats(struct request_queue *q,
        struct bfq_queue *bfqq,
        bool idle_timer_disabled,
        unsigned int cmd_flags) {}
