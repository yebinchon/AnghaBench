
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int pid; TYPE_1__* nested; } ;
struct kvm_vcpu {TYPE_4__ arch; TYPE_3__* kvm; } ;
typedef int gva_t ;
struct TYPE_6__ {int lpid; } ;
struct TYPE_7__ {TYPE_2__ arch; } ;
struct TYPE_5__ {int shadow_lpid; } ;


 long EINVAL ;
 long __kvmhv_copy_tofrom_guest_radix (int,int,int,void*,void*,unsigned long) ;

__attribute__((used)) static long kvmhv_copy_tofrom_guest_radix(struct kvm_vcpu *vcpu, gva_t eaddr,
       void *to, void *from, unsigned long n)
{
 int lpid = vcpu->kvm->arch.lpid;
 int pid = vcpu->arch.pid;


 if (eaddr & (0x3FFUL << 52))
  return -EINVAL;


 if (vcpu->arch.nested)
  lpid = vcpu->arch.nested->shadow_lpid;


 if (((eaddr >> 62) & 0x3) == 0x3)
  pid = 0;

 eaddr &= ~(0xFFFUL << 52);

 return __kvmhv_copy_tofrom_guest_radix(lpid, pid, eaddr, to, from, n);
}
