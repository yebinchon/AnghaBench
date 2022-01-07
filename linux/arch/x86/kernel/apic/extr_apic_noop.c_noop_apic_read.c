
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int WARN_ON_ONCE (int) ;
 int X86_FEATURE_APIC ;
 scalar_t__ boot_cpu_has (int ) ;
 int disable_apic ;

__attribute__((used)) static u32 noop_apic_read(u32 reg)
{
 WARN_ON_ONCE(boot_cpu_has(X86_FEATURE_APIC) && !disable_apic);
 return 0;
}
