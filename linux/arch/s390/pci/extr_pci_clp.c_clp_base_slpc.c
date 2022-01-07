
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {unsigned long len; } ;
struct TYPE_8__ {TYPE_3__ hdr; } ;
struct TYPE_5__ {int len; } ;
struct TYPE_6__ {TYPE_1__ hdr; } ;
struct clp_req_rsp_slpc {TYPE_4__ response; TYPE_2__ request; } ;
struct clp_req {int dummy; } ;


 int CLP_LPS_BASE ;
 int EINVAL ;
 int EOPNOTSUPP ;
 int PAGE_SIZE ;
 scalar_t__ clp_req (struct clp_req_rsp_slpc*,int ) ;

__attribute__((used)) static int clp_base_slpc(struct clp_req *req, struct clp_req_rsp_slpc *lpcb)
{
 unsigned long limit = PAGE_SIZE - sizeof(lpcb->request);

 if (lpcb->request.hdr.len != sizeof(lpcb->request) ||
     lpcb->response.hdr.len > limit)
  return -EINVAL;
 return clp_req(lpcb, CLP_LPS_BASE) ? -EOPNOTSUPP : 0;
}
