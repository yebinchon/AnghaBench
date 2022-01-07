
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ const u64 ;
struct timer_group_priv {int dummy; } ;
struct mpic_timer {int num; } ;


 scalar_t__ MAX_TICKS ;
 scalar_t__ MAX_TICKS_CASCADE ;
 struct mpic_timer* detect_idle_cascade_timer (struct timer_group_priv*) ;
 int set_cascade_timer (struct timer_group_priv*,scalar_t__ const,int ) ;

__attribute__((used)) static struct mpic_timer *get_cascade_timer(struct timer_group_priv *priv,
     u64 ticks)
{
 struct mpic_timer *allocated_timer;


 const u64 max_ticks = (u64)MAX_TICKS * (u64)MAX_TICKS_CASCADE;
 int ret;

 if (ticks > max_ticks)
  return ((void*)0);


 allocated_timer = detect_idle_cascade_timer(priv);
 if (!allocated_timer)
  return ((void*)0);


 ret = set_cascade_timer(priv, ticks, allocated_timer->num);
 if (ret < 0)
  return ((void*)0);

 return allocated_timer;
}
