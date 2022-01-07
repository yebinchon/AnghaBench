
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __iowmb () ;

__attribute__((used)) static inline void keystone_timer_barrier(void)
{
 __iowmb();
}
