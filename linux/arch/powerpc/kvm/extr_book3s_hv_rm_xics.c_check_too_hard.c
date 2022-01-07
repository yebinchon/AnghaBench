
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvmppc_xics {scalar_t__ real_mode_dbg; } ;
struct kvmppc_icp {scalar_t__ rm_action; } ;


 int H_SUCCESS ;
 int H_TOO_HARD ;

__attribute__((used)) static inline int check_too_hard(struct kvmppc_xics *xics,
     struct kvmppc_icp *icp)
{
 return (xics->real_mode_dbg || icp->rm_action) ? H_TOO_HARD : H_SUCCESS;
}
