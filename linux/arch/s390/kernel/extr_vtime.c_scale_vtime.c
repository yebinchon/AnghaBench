
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int __this_cpu_read (int ) ;
 int mt_scaling_div ;
 int mt_scaling_mult ;
 scalar_t__ smp_cpu_mtid ;

__attribute__((used)) static inline u64 scale_vtime(u64 vtime)
{
 u64 mult = __this_cpu_read(mt_scaling_mult);
 u64 div = __this_cpu_read(mt_scaling_div);

 if (smp_cpu_mtid)
  return vtime * mult / div;
 return vtime;
}
