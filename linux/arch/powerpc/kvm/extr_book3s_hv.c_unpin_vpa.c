
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvmppc_vpa {int dirty; int gpa; scalar_t__ pinned_addr; } ;
struct kvm {int dummy; } ;


 int kvmppc_unpin_guest_page (struct kvm*,scalar_t__,int ,int ) ;

__attribute__((used)) static void unpin_vpa(struct kvm *kvm, struct kvmppc_vpa *vpa)
{
 if (vpa->pinned_addr)
  kvmppc_unpin_guest_page(kvm, vpa->pinned_addr, vpa->gpa,
     vpa->dirty);
}
