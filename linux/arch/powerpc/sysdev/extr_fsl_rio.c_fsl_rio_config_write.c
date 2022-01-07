
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct rio_priv {scalar_t__ maint_win; TYPE_1__* maint_atmu_regs; } ;
struct rio_mport {struct rio_priv* priv; } ;
struct TYPE_2__ {int rowtar; int rowtear; } ;


 int EINVAL ;
 int IS_ALIGNED (int,int) ;
 int RIO_MAINT_WIN_SIZE ;
 int fsl_rio_config_lock ;
 int out_8 (int*,int) ;
 int out_be16 (int*,int) ;
 int out_be32 (int*,int) ;
 int pr_debug (char*,int,int,int,int,int,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int
fsl_rio_config_write(struct rio_mport *mport, int index, u16 destid,
   u8 hopcount, u32 offset, int len, u32 val)
{
 struct rio_priv *priv = mport->priv;
 unsigned long flags;
 u8 *data;
 int ret = 0;

 pr_debug
  ("fsl_rio_config_write:"
  " index %d destid %d hopcount %d offset %8.8x len %d val %8.8x\n",
  index, destid, hopcount, offset, len, val);



 if (offset > (0x1000000 - len) || !IS_ALIGNED(offset, len))
  return -EINVAL;

 spin_lock_irqsave(&fsl_rio_config_lock, flags);

 out_be32(&priv->maint_atmu_regs->rowtar,
   (destid << 22) | (hopcount << 12) | (offset >> 12));
 out_be32(&priv->maint_atmu_regs->rowtear, (destid >> 10));

 data = (u8 *) priv->maint_win + (offset & (RIO_MAINT_WIN_SIZE - 1));
 switch (len) {
 case 1:
  out_8((u8 *) data, val);
  break;
 case 2:
  out_be16((u16 *) data, val);
  break;
 case 4:
  out_be32((u32 *) data, val);
  break;
 default:
  ret = -EINVAL;
 }
 spin_unlock_irqrestore(&fsl_rio_config_lock, flags);

 return ret;
}
