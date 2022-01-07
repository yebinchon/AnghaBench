
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int X86_BUG_MONITOR ;
 int X86_FEATURE_ARAT ;
 int X86_FEATURE_MWAIT ;
 scalar_t__ boot_cpu_has (int ) ;
 int boot_cpu_has_bug (int ) ;

__attribute__((used)) static inline bool kvm_can_mwait_in_guest(void)
{
 return boot_cpu_has(X86_FEATURE_MWAIT) &&
  !boot_cpu_has_bug(X86_BUG_MONITOR) &&
  boot_cpu_has(X86_FEATURE_ARAT);
}
