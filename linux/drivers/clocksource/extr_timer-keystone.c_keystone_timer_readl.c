
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {scalar_t__ base; } ;


 int readl_relaxed (scalar_t__) ;
 TYPE_1__ timer ;

__attribute__((used)) static inline u32 keystone_timer_readl(unsigned long rg)
{
 return readl_relaxed(timer.base + rg);
}
