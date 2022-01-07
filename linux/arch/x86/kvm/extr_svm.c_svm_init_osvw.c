
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int length; unsigned long long status; } ;
struct TYPE_5__ {TYPE_1__ osvw; } ;
struct kvm_vcpu {TYPE_2__ arch; } ;
struct TYPE_6__ {int x86; } ;


 TYPE_3__ boot_cpu_data ;
 int osvw_len ;
 unsigned long long osvw_status ;

__attribute__((used)) static void svm_init_osvw(struct kvm_vcpu *vcpu)
{




 vcpu->arch.osvw.length = (osvw_len >= 3) ? (osvw_len) : 3;
 vcpu->arch.osvw.status = osvw_status & ~(6ULL);
 if (osvw_len == 0 && boot_cpu_data.x86 == 0x10)
  vcpu->arch.osvw.status |= 1;
}
