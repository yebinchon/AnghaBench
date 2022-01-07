
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pvclock_vsyscall_time_info {int dummy; } ;


 int hv_clock_per_cpu ;
 struct pvclock_vsyscall_time_info* this_cpu_read (int ) ;

__attribute__((used)) static inline struct pvclock_vsyscall_time_info *this_cpu_hvclock(void)
{
 return this_cpu_read(hv_clock_per_cpu);
}
