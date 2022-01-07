
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOMEM ;
 int GAL_ISC ;
 int KVM_DEV_TYPE_FLIC ;
 int debug_register (char*,int,int,int) ;
 scalar_t__ debug_register_view (int ,int *) ;
 int debug_sprintf_view ;
 int debug_unregister (int ) ;
 int kvm_flic_ops ;
 int kvm_register_device_ops (int *,int ) ;
 int kvm_s390_cpu_feat_init () ;
 int kvm_s390_dbf ;
 int kvm_s390_gib_destroy () ;
 int kvm_s390_gib_init (int ) ;
 int pr_err (char*,int) ;

int kvm_arch_init(void *opaque)
{
 int rc;

 kvm_s390_dbf = debug_register("kvm-trace", 32, 1, 7 * sizeof(long));
 if (!kvm_s390_dbf)
  return -ENOMEM;

 if (debug_register_view(kvm_s390_dbf, &debug_sprintf_view)) {
  rc = -ENOMEM;
  goto out_debug_unreg;
 }

 kvm_s390_cpu_feat_init();


 rc = kvm_register_device_ops(&kvm_flic_ops, KVM_DEV_TYPE_FLIC);
 if (rc) {
  pr_err("A FLIC registration call failed with rc=%d\n", rc);
  goto out_debug_unreg;
 }

 rc = kvm_s390_gib_init(GAL_ISC);
 if (rc)
  goto out_gib_destroy;

 return 0;

out_gib_destroy:
 kvm_s390_gib_destroy();
out_debug_unreg:
 debug_unregister(kvm_s390_dbf);
 return rc;
}
