
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {scalar_t__ base; } ;


 TYPE_1__ timer ;
 int writel_relaxed (int ,scalar_t__) ;

__attribute__((used)) static inline void keystone_timer_writel(u32 val, unsigned long rg)
{
 writel_relaxed(val, timer.base + rg);
}
