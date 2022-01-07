
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct kvm_cpu_context {scalar_t__ cp15; } ;



__attribute__((used)) static u64 *cp15_64(struct kvm_cpu_context *ctxt, int idx)
{
 return (u64 *)(ctxt->cp15 + idx);
}
