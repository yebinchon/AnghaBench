
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct blk_stat_callback {int timer; } ;


 int del_timer_sync (int *) ;

__attribute__((used)) static inline void blk_stat_deactivate(struct blk_stat_callback *cb)
{
 del_timer_sync(&cb->timer);
}
