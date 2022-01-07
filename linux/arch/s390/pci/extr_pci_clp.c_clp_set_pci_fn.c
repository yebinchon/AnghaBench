
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef void* u8 ;
typedef int u32 ;
struct TYPE_7__ {scalar_t__ rsp; int len; } ;
struct TYPE_8__ {TYPE_3__ hdr; int fh; } ;
struct TYPE_5__ {int len; int cmd; } ;
struct TYPE_6__ {void* ndas; void* oc; int fh; TYPE_1__ hdr; } ;
struct clp_req_rsp_set_pci {TYPE_4__ response; TYPE_2__ request; } ;


 int CLP_LPS_PCI ;
 scalar_t__ CLP_RC_OK ;
 scalar_t__ CLP_RC_SETPCIFN_BUSY ;
 int CLP_SET_PCI_FN ;
 int EIO ;
 int ENOMEM ;
 int GFP_KERNEL ;
 struct clp_req_rsp_set_pci* clp_alloc_block (int ) ;
 int clp_free_block (struct clp_req_rsp_set_pci*) ;
 int clp_req (struct clp_req_rsp_set_pci*,int ) ;
 int memset (struct clp_req_rsp_set_pci*,int ,int) ;
 int msleep (int) ;
 int zpci_err (char*) ;
 int zpci_err_clp (scalar_t__,int) ;

__attribute__((used)) static int clp_set_pci_fn(u32 *fh, u8 nr_dma_as, u8 command)
{
 struct clp_req_rsp_set_pci *rrb;
 int rc, retries = 100;

 rrb = clp_alloc_block(GFP_KERNEL);
 if (!rrb)
  return -ENOMEM;

 do {
  memset(rrb, 0, sizeof(*rrb));
  rrb->request.hdr.len = sizeof(rrb->request);
  rrb->request.hdr.cmd = CLP_SET_PCI_FN;
  rrb->response.hdr.len = sizeof(rrb->response);
  rrb->request.fh = *fh;
  rrb->request.oc = command;
  rrb->request.ndas = nr_dma_as;

  rc = clp_req(rrb, CLP_LPS_PCI);
  if (rrb->response.hdr.rsp == CLP_RC_SETPCIFN_BUSY) {
   retries--;
   if (retries < 0)
    break;
   msleep(20);
  }
 } while (rrb->response.hdr.rsp == CLP_RC_SETPCIFN_BUSY);

 if (!rc && rrb->response.hdr.rsp == CLP_RC_OK)
  *fh = rrb->response.fh;
 else {
  zpci_err("Set PCI FN:\n");
  zpci_err_clp(rrb->response.hdr.rsp, rc);
  rc = -EIO;
 }
 clp_free_block(rrb);
 return rc;
}
