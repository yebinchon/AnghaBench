
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct device {int dummy; } ;
struct crb_priv {TYPE_1__* regs_h; } ;
struct TYPE_2__ {int loc_state; int loc_ctrl; } ;


 int CRB_LOC_CTRL_REQUEST_ACCESS ;
 int CRB_LOC_STATE_LOC_ASSIGNED ;
 int CRB_LOC_STATE_TPM_REG_VALID_STS ;
 int ETIME ;
 int TPM2_TIMEOUT_C ;
 int crb_wait_for_reg_32 (int *,int,int,int ) ;
 int dev_warn (struct device*,char*) ;
 int iowrite32 (int ,int *) ;

__attribute__((used)) static int __crb_request_locality(struct device *dev,
      struct crb_priv *priv, int loc)
{
 u32 value = CRB_LOC_STATE_LOC_ASSIGNED |
      CRB_LOC_STATE_TPM_REG_VALID_STS;

 if (!priv->regs_h)
  return 0;

 iowrite32(CRB_LOC_CTRL_REQUEST_ACCESS, &priv->regs_h->loc_ctrl);
 if (!crb_wait_for_reg_32(&priv->regs_h->loc_state, value, value,
     TPM2_TIMEOUT_C)) {
  dev_warn(dev, "TPM_LOC_STATE_x.requestAccess timed out\n");
  return -ETIME;
 }

 return 0;
}
