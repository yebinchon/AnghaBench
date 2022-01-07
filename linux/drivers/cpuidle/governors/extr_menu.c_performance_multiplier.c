
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline int performance_multiplier(unsigned long nr_iowaiters)
{

 return 1 + 10 * nr_iowaiters;
}
