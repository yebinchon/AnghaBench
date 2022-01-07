
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef void* u8 ;
typedef scalar_t__ u64 ;
typedef int u32 ;
struct kvm_s390_gib {void* nisc; } ;
struct TYPE_6__ {int aiv; } ;
struct TYPE_5__ {void* isc; } ;


 int EIO ;
 int ENOMEM ;
 int GFP_DMA ;
 int GFP_KERNEL ;
 int KVM_EVENT (int,char*,...) ;
 scalar_t__ chsc_sgib (int ) ;
 TYPE_4__ css_general_characteristics ;
 int free_page (unsigned long) ;
 scalar_t__ get_zeroed_page (int) ;
 struct kvm_s390_gib* gib ;
 TYPE_1__ gib_alert_irq ;
 int pr_err (char*) ;
 scalar_t__ register_adapter_interrupt (TYPE_1__*) ;
 int unregister_adapter_interrupt (TYPE_1__*) ;

int kvm_s390_gib_init(u8 nisc)
{
 int rc = 0;

 if (!css_general_characteristics.aiv) {
  KVM_EVENT(3, "%s", "gib not initialized, no AIV facility");
  goto out;
 }

 gib = (struct kvm_s390_gib *)get_zeroed_page(GFP_KERNEL | GFP_DMA);
 if (!gib) {
  rc = -ENOMEM;
  goto out;
 }

 gib_alert_irq.isc = nisc;
 if (register_adapter_interrupt(&gib_alert_irq)) {
  pr_err("Registering the GIB alert interruption handler failed\n");
  rc = -EIO;
  goto out_free_gib;
 }

 gib->nisc = nisc;
 if (chsc_sgib((u32)(u64)gib)) {
  pr_err("Associating the GIB with the AIV facility failed\n");
  free_page((unsigned long)gib);
  gib = ((void*)0);
  rc = -EIO;
  goto out_unreg_gal;
 }

 KVM_EVENT(3, "gib 0x%pK (nisc=%d) initialized", gib, gib->nisc);
 goto out;

out_unreg_gal:
 unregister_adapter_interrupt(&gib_alert_irq);
out_free_gib:
 free_page((unsigned long)gib);
 gib = ((void*)0);
out:
 return rc;
}
