
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct kvm_cpuid_entry2 {int function; int index; scalar_t__ flags; int edx; int ecx; int ebx; int eax; } ;


 scalar_t__ KVM_CPUID_FLAG_SIGNIFCANT_INDEX ;
 scalar_t__ KVM_CPUID_FLAG_STATEFUL_FUNC ;
 int cpuid_count (int,int,int *,int *,int *,int *) ;

__attribute__((used)) static void do_host_cpuid(struct kvm_cpuid_entry2 *entry, u32 function,
      u32 index)
{
 entry->function = function;
 entry->index = index;
 entry->flags = 0;

 cpuid_count(entry->function, entry->index,
      &entry->eax, &entry->ebx, &entry->ecx, &entry->edx);

 switch (function) {
 case 2:
  entry->flags |= KVM_CPUID_FLAG_STATEFUL_FUNC;
  break;
 case 4:
 case 7:
 case 0xb:
 case 0xd:
 case 0xf:
 case 0x10:
 case 0x12:
 case 0x14:
 case 0x17:
 case 0x18:
 case 0x1f:
 case 0x8000001d:
  entry->flags |= KVM_CPUID_FLAG_SIGNIFCANT_INDEX;
  break;
 }
}
