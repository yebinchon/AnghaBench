
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned long uint64_t ;
struct papr_scm_priv {int drc_index; TYPE_1__* pdev; } ;
typedef scalar_t__ int64_t ;
struct TYPE_2__ {int dev; } ;


 scalar_t__ H_BUSY ;
 scalar_t__ H_IS_LONG_BUSY (scalar_t__) ;
 int H_SCM_UNBIND_ALL ;
 int H_UNBIND_SCOPE_DRC ;
 int PLPAR_HCALL_BUFSIZE ;
 int cond_resched () ;
 int dev_dbg (int *,char*,int ) ;
 int dev_err (int *,char*,scalar_t__) ;
 int get_longbusy_msecs (scalar_t__) ;
 int msleep (int ) ;
 scalar_t__ plpar_hcall (int ,unsigned long*,int ,int ,unsigned long) ;

__attribute__((used)) static void drc_pmem_unbind(struct papr_scm_priv *p)
{
 unsigned long ret[PLPAR_HCALL_BUFSIZE];
 uint64_t token = 0;
 int64_t rc;

 dev_dbg(&p->pdev->dev, "unbind drc 0x%x\n", p->drc_index);


 do {


  rc = plpar_hcall(H_SCM_UNBIND_ALL, ret, H_UNBIND_SCOPE_DRC,
     p->drc_index, token);
  token = ret[0];


  if (H_IS_LONG_BUSY(rc)) {
   msleep(get_longbusy_msecs(rc));
   rc = H_BUSY;
  } else if (rc == H_BUSY) {
   cond_resched();
  }

 } while (rc == H_BUSY);

 if (rc)
  dev_err(&p->pdev->dev, "unbind error: %lld\n", rc);
 else
  dev_dbg(&p->pdev->dev, "unbind drc 0x%x complete\n",
   p->drc_index);

 return;
}
