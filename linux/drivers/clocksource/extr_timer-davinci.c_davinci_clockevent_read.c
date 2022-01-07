
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct davinci_clockevent {scalar_t__ base; } ;


 unsigned int readl_relaxed (scalar_t__) ;

__attribute__((used)) static unsigned int
davinci_clockevent_read(struct davinci_clockevent *clockevent,
   unsigned int reg)
{
 return readl_relaxed(clockevent->base + reg);
}
