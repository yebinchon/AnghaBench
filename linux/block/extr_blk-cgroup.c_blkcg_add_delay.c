
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct blkcg_gq {int delay_nsec; } ;


 int atomic64_add (int ,int *) ;
 int blkcg_scale_delay (struct blkcg_gq*,int ) ;

void blkcg_add_delay(struct blkcg_gq *blkg, u64 now, u64 delta)
{
 blkcg_scale_delay(blkg, now);
 atomic64_add(delta, &blkg->delay_nsec);
}
