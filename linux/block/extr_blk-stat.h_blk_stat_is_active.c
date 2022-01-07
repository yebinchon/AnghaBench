
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct blk_stat_callback {int timer; } ;


 int timer_pending (int *) ;

__attribute__((used)) static inline bool blk_stat_is_active(struct blk_stat_callback *cb)
{
 return timer_pending(&cb->timer);
}
