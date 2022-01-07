
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long HZ ;
 unsigned long loops_per_jiffy ;

__attribute__((used)) static inline unsigned long xloops_to_cycles(unsigned long xloops)
{
 return (xloops * loops_per_jiffy * HZ) >> 32;
}
