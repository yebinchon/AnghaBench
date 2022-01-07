
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct blk_stat_callback {int timer; } ;


 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ nsecs_to_jiffies (int ) ;

__attribute__((used)) static inline void blk_stat_activate_nsecs(struct blk_stat_callback *cb,
        u64 nsecs)
{
 mod_timer(&cb->timer, jiffies + nsecs_to_jiffies(nsecs));
}
