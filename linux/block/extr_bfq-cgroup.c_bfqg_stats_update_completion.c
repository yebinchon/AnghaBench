
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct bfq_group {int dummy; } ;



void bfqg_stats_update_completion(struct bfq_group *bfqg, u64 start_time_ns,
      u64 io_start_time_ns, unsigned int op) { }
