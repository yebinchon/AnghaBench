
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pgd; } ;
struct TYPE_4__ {TYPE_1__ gpa_mm; } ;
struct kvm {TYPE_2__ arch; } ;


 int WARN_ON (int) ;
 int kvm_mips_flush_gpa_pt (struct kvm*,int ,int ) ;
 int pgd_free (int *,int ) ;

__attribute__((used)) static void kvm_mips_free_gpa_pt(struct kvm *kvm)
{

 WARN_ON(!kvm_mips_flush_gpa_pt(kvm, 0, ~0));
 pgd_free(((void*)0), kvm->arch.gpa_mm.pgd);
}
