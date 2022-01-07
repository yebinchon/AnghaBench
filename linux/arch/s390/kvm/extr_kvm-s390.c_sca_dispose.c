
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * sca; scalar_t__ use_esca; } ;
struct kvm {TYPE_1__ arch; } ;
struct esca_block {int dummy; } ;


 int free_page (unsigned long) ;
 int free_pages_exact (int *,int) ;

__attribute__((used)) static void sca_dispose(struct kvm *kvm)
{
 if (kvm->arch.use_esca)
  free_pages_exact(kvm->arch.sca, sizeof(struct esca_block));
 else
  free_page((unsigned long)(kvm->arch.sca));
 kvm->arch.sca = ((void*)0);
}
