
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct cpuid {int version; } ;


 int get_cpu_id (struct cpuid*) ;

__attribute__((used)) static u64 kvm_s390_get_initial_cpuid(void)
{
 struct cpuid cpuid;

 get_cpu_id(&cpuid);
 cpuid.version = 0xff;
 return *((u64 *) &cpuid);
}
