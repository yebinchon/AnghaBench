
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clp_req_rsp_list_pci {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int __clp_add ;
 struct clp_req_rsp_list_pci* clp_alloc_block (int ) ;
 int clp_free_block (struct clp_req_rsp_list_pci*) ;
 int clp_list_pci (struct clp_req_rsp_list_pci*,int *,int ) ;

int clp_scan_pci_devices(void)
{
 struct clp_req_rsp_list_pci *rrb;
 int rc;

 rrb = clp_alloc_block(GFP_KERNEL);
 if (!rrb)
  return -ENOMEM;

 rc = clp_list_pci(rrb, ((void*)0), __clp_add);

 clp_free_block(rrb);
 return rc;
}
