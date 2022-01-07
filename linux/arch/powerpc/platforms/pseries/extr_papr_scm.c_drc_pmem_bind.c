
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned long uint64_t ;
struct papr_scm_priv {unsigned long bound_addr; int res; int drc_index; TYPE_1__* pdev; int blocks; } ;
typedef scalar_t__ int64_t ;
struct TYPE_2__ {int dev; } ;


 int BIND_ANY_ADDR ;
 scalar_t__ H_BUSY ;
 int H_SCM_BIND_MEM ;
 int PLPAR_HCALL_BUFSIZE ;
 int cond_resched () ;
 int dev_dbg (int *,char*,int ,int *) ;
 scalar_t__ plpar_hcall (int ,unsigned long*,int ,int ,int ,int ,unsigned long) ;

__attribute__((used)) static int drc_pmem_bind(struct papr_scm_priv *p)
{
 unsigned long ret[PLPAR_HCALL_BUFSIZE];
 uint64_t saved = 0;
 uint64_t token;
 int64_t rc;







 token = 0;

 do {
  rc = plpar_hcall(H_SCM_BIND_MEM, ret, p->drc_index, 0,
    p->blocks, BIND_ANY_ADDR, token);
  token = ret[0];
  if (!saved)
   saved = ret[1];
  cond_resched();
 } while (rc == H_BUSY);

 if (rc)
  return rc;

 p->bound_addr = saved;
 dev_dbg(&p->pdev->dev, "bound drc 0x%x to %pR\n", p->drc_index, &p->res);
 return rc;
}
