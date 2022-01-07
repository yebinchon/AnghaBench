
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;


 scalar_t__ kvm_clock_read () ;
 scalar_t__ kvm_sched_clock_offset ;

__attribute__((used)) static u64 kvm_sched_clock_read(void)
{
 return kvm_clock_read() - kvm_sched_clock_offset;
}
