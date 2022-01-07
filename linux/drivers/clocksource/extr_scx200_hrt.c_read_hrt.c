
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct clocksource {int dummy; } ;


 scalar_t__ SCx200_TIMER_OFFSET ;
 int inl (scalar_t__) ;
 scalar_t__ scx200_cb_base ;

__attribute__((used)) static u64 read_hrt(struct clocksource *cs)
{

 return (u64) inl(scx200_cb_base + SCx200_TIMER_OFFSET);
}
