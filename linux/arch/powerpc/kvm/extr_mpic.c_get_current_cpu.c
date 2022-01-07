
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int irq_cpu_id; } ;
struct kvm_vcpu {TYPE_2__ arch; } ;
struct TYPE_4__ {struct kvm_vcpu* kvm_vcpu; } ;
struct TYPE_6__ {TYPE_1__ thread; } ;


 TYPE_3__* current ;

__attribute__((used)) static int get_current_cpu(void)
{





 return -1;

}
