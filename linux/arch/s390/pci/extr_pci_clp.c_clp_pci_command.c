
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clp_req_hdr {int cmd; } ;
struct clp_req {int dummy; } ;


 int EINVAL ;
 int clp_pci_list (struct clp_req*,void*) ;
 int clp_pci_query (struct clp_req*,void*) ;
 int clp_pci_query_grp (struct clp_req*,void*) ;
 int clp_pci_slpc (struct clp_req*,void*) ;

__attribute__((used)) static int clp_pci_command(struct clp_req *req, struct clp_req_hdr *lpcb)
{
 switch (lpcb->cmd) {
 case 0x0001:
  return clp_pci_slpc(req, (void *) lpcb);
 case 0x0002:
  return clp_pci_list(req, (void *) lpcb);
 case 0x0003:
  return clp_pci_query(req, (void *) lpcb);
 case 0x0004:
  return clp_pci_query_grp(req, (void *) lpcb);
 default:
  return -EINVAL;
 }
}
