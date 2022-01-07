
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
typedef scalar_t__ time64_t ;
struct timer_group_priv {int timerfreq; } ;


 scalar_t__ div_u64 (scalar_t__ const,int ) ;

__attribute__((used)) static void convert_ticks_to_time(struct timer_group_priv *priv,
  const u64 ticks, time64_t *time)
{
 *time = (u64)div_u64(ticks, priv->timerfreq);
}
