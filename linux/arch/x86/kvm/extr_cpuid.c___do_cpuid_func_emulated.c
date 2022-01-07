
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct kvm_cpuid_entry2 {int function; int eax; void* ecx; scalar_t__ flags; scalar_t__ index; } ;


 void* F (int ) ;
 scalar_t__ KVM_CPUID_FLAG_SIGNIFCANT_INDEX ;
 int MOVBE ;
 int RDPID ;

__attribute__((used)) static int __do_cpuid_func_emulated(struct kvm_cpuid_entry2 *entry,
        u32 func, int *nent, int maxnent)
{
 entry->function = func;
 entry->index = 0;
 entry->flags = 0;

 switch (func) {
 case 0:
  entry->eax = 7;
  ++*nent;
  break;
 case 1:
  entry->ecx = F(MOVBE);
  ++*nent;
  break;
 case 7:
  entry->flags |= KVM_CPUID_FLAG_SIGNIFCANT_INDEX;
  entry->eax = 0;
  entry->ecx = F(RDPID);
  ++*nent;
 default:
  break;
 }

 return 0;
}
