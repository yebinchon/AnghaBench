
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xen_add_to_physmap {int gpfn; int space; scalar_t__ idx; int domid; } ;


 int BUG () ;
 int DOMID_SELF ;
 scalar_t__ HYPERVISOR_memory_op (int ,struct xen_add_to_physmap*) ;
 int XENMAPSPACE_shared_info ;
 int XENMEM_add_to_physmap ;
 int shared_info_pfn ;

void xen_hvm_init_shared_info(void)
{
 struct xen_add_to_physmap xatp;

 xatp.domid = DOMID_SELF;
 xatp.idx = 0;
 xatp.space = XENMAPSPACE_shared_info;
 xatp.gpfn = shared_info_pfn;
 if (HYPERVISOR_memory_op(XENMEM_add_to_physmap, &xatp))
  BUG();
}
