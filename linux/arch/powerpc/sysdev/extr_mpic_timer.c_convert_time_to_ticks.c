
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
typedef scalar_t__ time64_t ;
struct timer_group_priv {scalar_t__ timerfreq; } ;


 int EINVAL ;
 int ULLONG_MAX ;
 scalar_t__ div_u64 (int ,scalar_t__) ;

__attribute__((used)) static int convert_time_to_ticks(struct timer_group_priv *priv,
  time64_t time, u64 *ticks)
{
 u64 max_value;

 max_value = div_u64(ULLONG_MAX, priv->timerfreq);

 if (time > max_value)
  return -EINVAL;

 *ticks = (u64)time * (u64)priv->timerfreq;

 return 0;
}
