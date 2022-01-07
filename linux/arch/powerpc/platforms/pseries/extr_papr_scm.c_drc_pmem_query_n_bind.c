
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct papr_scm_priv {int blocks; int block_size; unsigned long bound_addr; TYPE_1__* pdev; int res; int drc_index; } ;
typedef int int64_t ;
struct TYPE_2__ {int dev; } ;


 int H_SCM_QUERY_BLOCK_MEM_BINDING ;
 int PLPAR_HCALL_BUFSIZE ;
 int dev_dbg (int *,char*,int ,int *) ;
 int dev_info (int *,char*) ;
 int drc_pmem_bind (struct papr_scm_priv*) ;
 int drc_pmem_unbind (struct papr_scm_priv*) ;
 int plpar_hcall (int ,unsigned long*,int ,int) ;

__attribute__((used)) static int drc_pmem_query_n_bind(struct papr_scm_priv *p)
{
 unsigned long start_addr;
 unsigned long end_addr;
 unsigned long ret[PLPAR_HCALL_BUFSIZE];
 int64_t rc;


 rc = plpar_hcall(H_SCM_QUERY_BLOCK_MEM_BINDING, ret,
    p->drc_index, 0);
 if (rc)
  goto err_out;
 start_addr = ret[0];


 rc = plpar_hcall(H_SCM_QUERY_BLOCK_MEM_BINDING, ret,
    p->drc_index, p->blocks - 1);
 if (rc)
  goto err_out;
 end_addr = ret[0];

 if ((end_addr - start_addr) != ((p->blocks - 1) * p->block_size))
  goto err_out;

 p->bound_addr = start_addr;
 dev_dbg(&p->pdev->dev, "bound drc 0x%x to %pR\n", p->drc_index, &p->res);
 return rc;

err_out:
 dev_info(&p->pdev->dev,
   "Failed to query, trying an unbind followed by bind");
 drc_pmem_unbind(p);
 return drc_pmem_bind(p);
}
