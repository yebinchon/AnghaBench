
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pgd; } ;
struct TYPE_4__ {TYPE_1__ gpa_mm; } ;
struct kvm {TYPE_2__ arch; } ;
typedef int gfn_t ;


 int PAGE_SHIFT ;
 int kvm_mips_flush_gpa_pgd (int ,int,int) ;

bool kvm_mips_flush_gpa_pt(struct kvm *kvm, gfn_t start_gfn, gfn_t end_gfn)
{
 return kvm_mips_flush_gpa_pgd(kvm->arch.gpa_mm.pgd,
          start_gfn << PAGE_SHIFT,
          end_gfn << PAGE_SHIFT);
}
