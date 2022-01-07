
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int zapped_obsolete_pages; } ;
struct kvm {TYPE_1__ arch; } ;


 int list_empty_careful (int *) ;
 int unlikely (int) ;

__attribute__((used)) static bool kvm_has_zapped_obsolete_pages(struct kvm *kvm)
{
 return unlikely(!list_empty_careful(&kvm->arch.zapped_obsolete_pages));
}
