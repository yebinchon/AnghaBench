
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vsie_page {int fault_addr; int gmap; } ;
struct kvm_vcpu {int dummy; } ;
struct TYPE_3__ {scalar_t__ gmap_int_code; int gmap_write_flag; int gmap_addr; } ;
struct TYPE_4__ {TYPE_1__ thread; } ;


 scalar_t__ PGM_PROTECTION ;
 TYPE_2__* current ;
 int inject_fault (struct kvm_vcpu*,int,int ,int) ;
 int kvm_s390_shadow_fault (struct kvm_vcpu*,int ,int ) ;

__attribute__((used)) static int handle_fault(struct kvm_vcpu *vcpu, struct vsie_page *vsie_page)
{
 int rc;

 if (current->thread.gmap_int_code == PGM_PROTECTION)

  return inject_fault(vcpu, PGM_PROTECTION,
        current->thread.gmap_addr, 1);

 rc = kvm_s390_shadow_fault(vcpu, vsie_page->gmap,
       current->thread.gmap_addr);
 if (rc > 0) {
  rc = inject_fault(vcpu, rc,
      current->thread.gmap_addr,
      current->thread.gmap_write_flag);
  if (rc >= 0)
   vsie_page->fault_addr = current->thread.gmap_addr;
 }
 return rc;
}
