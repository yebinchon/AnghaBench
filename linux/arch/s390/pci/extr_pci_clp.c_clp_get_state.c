
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct clp_state_data {int state; int member_1; int member_0; } ;
struct clp_req_rsp_list_pci {int dummy; } ;
typedef enum zpci_state { ____Placeholder_zpci_state } zpci_state ;


 int ENOMEM ;
 int GFP_ATOMIC ;
 int ZPCI_FN_STATE_RESERVED ;
 int __clp_get_state ;
 struct clp_req_rsp_list_pci* clp_alloc_block (int ) ;
 int clp_free_block (struct clp_req_rsp_list_pci*) ;
 int clp_list_pci (struct clp_req_rsp_list_pci*,struct clp_state_data*,int ) ;

int clp_get_state(u32 fid, enum zpci_state *state)
{
 struct clp_req_rsp_list_pci *rrb;
 struct clp_state_data sd = {fid, ZPCI_FN_STATE_RESERVED};
 int rc;

 rrb = clp_alloc_block(GFP_ATOMIC);
 if (!rrb)
  return -ENOMEM;

 rc = clp_list_pci(rrb, &sd, __clp_get_state);
 if (!rc)
  *state = sd.state;

 clp_free_block(rrb);
 return rc;
}
