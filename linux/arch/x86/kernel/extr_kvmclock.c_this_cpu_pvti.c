
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pvclock_vcpu_time_info {int dummy; } ;
struct TYPE_2__ {struct pvclock_vcpu_time_info pvti; } ;


 int hv_clock_per_cpu ;
 TYPE_1__* this_cpu_read (int ) ;

__attribute__((used)) static inline struct pvclock_vcpu_time_info *this_cpu_pvti(void)
{
 return &this_cpu_read(hv_clock_per_cpu)->pvti;
}
