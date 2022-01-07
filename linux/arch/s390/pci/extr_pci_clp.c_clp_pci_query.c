
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int len; } ;
struct TYPE_8__ {scalar_t__ reserved2; scalar_t__ reserved3; TYPE_1__ hdr; } ;
struct TYPE_6__ {unsigned long len; } ;
struct TYPE_7__ {TYPE_2__ hdr; } ;
struct clp_req_rsp_query_pci {TYPE_4__ request; TYPE_3__ response; } ;
struct clp_req {int dummy; } ;


 int CLP_LPS_PCI ;
 int EINVAL ;
 int EOPNOTSUPP ;
 int PAGE_SIZE ;
 scalar_t__ clp_req (struct clp_req_rsp_query_pci*,int ) ;

__attribute__((used)) static int clp_pci_query(struct clp_req *req,
    struct clp_req_rsp_query_pci *lpcb)
{
 unsigned long limit = PAGE_SIZE - sizeof(lpcb->request);

 if (lpcb->request.hdr.len != sizeof(lpcb->request) ||
     lpcb->response.hdr.len > limit)
  return -EINVAL;
 if (lpcb->request.reserved2 != 0 || lpcb->request.reserved3 != 0)
  return -EINVAL;
 return clp_req(lpcb, CLP_LPS_PCI) ? -EOPNOTSUPP : 0;
}
