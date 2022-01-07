
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct zpci_dev {int dummy; } ;
struct TYPE_7__ {int len; scalar_t__ rsp; } ;
struct TYPE_8__ {TYPE_3__ hdr; int pfgid; } ;
struct TYPE_5__ {int len; int cmd; } ;
struct TYPE_6__ {int fh; TYPE_1__ hdr; } ;
struct clp_req_rsp_query_pci {TYPE_4__ response; TYPE_2__ request; } ;


 int CLP_LPS_PCI ;
 int CLP_QUERY_PCI_FN ;
 scalar_t__ CLP_RC_OK ;
 int EIO ;
 int ENOMEM ;
 int GFP_KERNEL ;
 struct clp_req_rsp_query_pci* clp_alloc_block (int ) ;
 int clp_free_block (struct clp_req_rsp_query_pci*) ;
 int clp_query_pci_fngrp (struct zpci_dev*,int ) ;
 int clp_req (struct clp_req_rsp_query_pci*,int ) ;
 int clp_store_query_pci_fn (struct zpci_dev*,TYPE_4__*) ;
 int memset (struct clp_req_rsp_query_pci*,int ,int) ;
 int zpci_err (char*) ;
 int zpci_err_clp (scalar_t__,int) ;

__attribute__((used)) static int clp_query_pci_fn(struct zpci_dev *zdev, u32 fh)
{
 struct clp_req_rsp_query_pci *rrb;
 int rc;

 rrb = clp_alloc_block(GFP_KERNEL);
 if (!rrb)
  return -ENOMEM;

 memset(rrb, 0, sizeof(*rrb));
 rrb->request.hdr.len = sizeof(rrb->request);
 rrb->request.hdr.cmd = CLP_QUERY_PCI_FN;
 rrb->response.hdr.len = sizeof(rrb->response);
 rrb->request.fh = fh;

 rc = clp_req(rrb, CLP_LPS_PCI);
 if (!rc && rrb->response.hdr.rsp == CLP_RC_OK) {
  rc = clp_store_query_pci_fn(zdev, &rrb->response);
  if (rc)
   goto out;
  rc = clp_query_pci_fngrp(zdev, rrb->response.pfgid);
 } else {
  zpci_err("Q PCI FN:\n");
  zpci_err_clp(rrb->response.hdr.rsp, rc);
  rc = -EIO;
 }
out:
 clp_free_block(rrb);
 return rc;
}
