
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct patb_entry {int dummy; } ;


 long ENODEV ;
 long ENOMEM ;
 int GFP_KERNEL ;
 int H_SET_PARTITION_TABLE ;
 long H_SUCCESS ;
 scalar_t__ KVMPPC_NR_LPIDS ;
 int __ilog2 (scalar_t__) ;
 long __pa (int *) ;
 int kfree (int *) ;
 int * kmalloc (int,int ) ;
 int kvmhv_on_pseries () ;
 long plpar_hcall_norets (int ,unsigned long) ;
 int pr_err (char*,...) ;
 int * pseries_partition_tb ;
 int radix_enabled () ;

long kvmhv_nested_init(void)
{
 long int ptb_order;
 unsigned long ptcr;
 long rc;

 if (!kvmhv_on_pseries())
  return 0;
 if (!radix_enabled())
  return -ENODEV;


 ptb_order = __ilog2(KVMPPC_NR_LPIDS - 1) + 1;
 if (ptb_order < 8)
  ptb_order = 8;
 pseries_partition_tb = kmalloc(sizeof(struct patb_entry) << ptb_order,
           GFP_KERNEL);
 if (!pseries_partition_tb) {
  pr_err("kvm-hv: failed to allocated nested partition table\n");
  return -ENOMEM;
 }

 ptcr = __pa(pseries_partition_tb) | (ptb_order - 8);
 rc = plpar_hcall_norets(H_SET_PARTITION_TABLE, ptcr);
 if (rc != H_SUCCESS) {
  pr_err("kvm-hv: Parent hypervisor does not support nesting (rc=%ld)\n",
         rc);
  kfree(pseries_partition_tb);
  pseries_partition_tb = ((void*)0);
  return -ENODEV;
 }

 return 0;
}
