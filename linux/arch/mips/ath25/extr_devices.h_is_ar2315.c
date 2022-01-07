
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ cputype; } ;


 scalar_t__ CPU_4KEC ;
 TYPE_1__ current_cpu_data ;

__attribute__((used)) static inline bool is_ar2315(void)
{
 return (current_cpu_data.cputype == CPU_4KEC);
}
