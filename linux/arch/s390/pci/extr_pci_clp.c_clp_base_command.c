
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clp_req_hdr {int cmd; } ;
struct clp_req {int dummy; } ;


 int EINVAL ;
 int clp_base_slpc (struct clp_req*,void*) ;

__attribute__((used)) static int clp_base_command(struct clp_req *req, struct clp_req_hdr *lpcb)
{
 switch (lpcb->cmd) {
 case 0x0001:
  return clp_base_slpc(req, (void *) lpcb);
 default:
  return -EINVAL;
 }
}
