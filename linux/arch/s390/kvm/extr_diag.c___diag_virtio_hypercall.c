
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_7__ {int diagnose_500; } ;
struct kvm_vcpu {TYPE_6__* run; TYPE_3__* kvm; TYPE_1__ stat; } ;
struct TYPE_10__ {int* gprs; } ;
struct TYPE_11__ {TYPE_4__ regs; } ;
struct TYPE_12__ {TYPE_5__ s; } ;
struct TYPE_8__ {int css_support; } ;
struct TYPE_9__ {TYPE_2__ arch; } ;


 int EOPNOTSUPP ;
 int KVM_S390_VIRTIO_CCW_NOTIFY ;
 int KVM_VIRTIO_CCW_NOTIFY_BUS ;
 int VCPU_EVENT (struct kvm_vcpu*,int,char*,int ,int ,int) ;
 int kvm_io_bus_write_cookie (struct kvm_vcpu*,int ,int,int,int*,int) ;

__attribute__((used)) static int __diag_virtio_hypercall(struct kvm_vcpu *vcpu)
{
 int ret;

 vcpu->stat.diagnose_500++;

 if (!vcpu->kvm->arch.css_support ||
     (vcpu->run->s.regs.gprs[1] != KVM_S390_VIRTIO_CCW_NOTIFY))
  return -EOPNOTSUPP;

 VCPU_EVENT(vcpu, 4, "diag 0x500 schid 0x%8.8x queue 0x%x cookie 0x%llx",
       (u32) vcpu->run->s.regs.gprs[2],
       (u32) vcpu->run->s.regs.gprs[3],
       vcpu->run->s.regs.gprs[4]);







 ret = kvm_io_bus_write_cookie(vcpu, KVM_VIRTIO_CCW_NOTIFY_BUS,
          vcpu->run->s.regs.gprs[2] & 0xffffffff,
          8, &vcpu->run->s.regs.gprs[3],
          vcpu->run->s.regs.gprs[4]);





 if (ret != -EOPNOTSUPP)
  vcpu->run->s.regs.gprs[2] = ret;

 return ret < 0 ? ret : 0;
}
