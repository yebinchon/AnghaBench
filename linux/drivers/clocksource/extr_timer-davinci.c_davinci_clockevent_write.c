
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct davinci_clockevent {scalar_t__ base; } ;


 int writel_relaxed (unsigned int,scalar_t__) ;

__attribute__((used)) static void davinci_clockevent_write(struct davinci_clockevent *clockevent,
         unsigned int reg, unsigned int val)
{
 writel_relaxed(val, clockevent->base + reg);
}
