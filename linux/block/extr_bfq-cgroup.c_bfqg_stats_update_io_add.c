
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfq_queue {int dummy; } ;
struct bfq_group {int dummy; } ;



void bfqg_stats_update_io_add(struct bfq_group *bfqg, struct bfq_queue *bfqq,
         unsigned int op) { }
