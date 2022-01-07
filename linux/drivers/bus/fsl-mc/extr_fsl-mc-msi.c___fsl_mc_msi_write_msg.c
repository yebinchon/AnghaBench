
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_3__ {int address_lo; int address_hi; int data; } ;
struct msi_desc {int irq; TYPE_1__ msg; } ;
struct fsl_mc_device_irq {int dev_irq_index; struct msi_desc* msi_desc; struct fsl_mc_device* mc_dev; } ;
struct TYPE_4__ {int id; int type; } ;
struct fsl_mc_device {int dev; TYPE_2__ obj_desc; int mc_handle; int mc_io; } ;
struct dprc_irq_cfg {int paddr; int irq_num; int val; } ;


 int MC_CMD_FLAG_INTR_DIS ;
 int MC_CMD_FLAG_PRI ;
 int dev_err (int *,char*,int) ;
 int dprc_set_irq (int ,int,int ,int ,struct dprc_irq_cfg*) ;
 int dprc_set_obj_irq (int ,int,int ,int ,int ,int ,struct dprc_irq_cfg*) ;

__attribute__((used)) static void __fsl_mc_msi_write_msg(struct fsl_mc_device *mc_bus_dev,
       struct fsl_mc_device_irq *mc_dev_irq)
{
 int error;
 struct fsl_mc_device *owner_mc_dev = mc_dev_irq->mc_dev;
 struct msi_desc *msi_desc = mc_dev_irq->msi_desc;
 struct dprc_irq_cfg irq_cfg;






 if (msi_desc->msg.address_lo == 0x0 && msi_desc->msg.address_hi == 0x0)
  return;

 if (!owner_mc_dev)
  return;

 irq_cfg.paddr = ((u64)msi_desc->msg.address_hi << 32) |
   msi_desc->msg.address_lo;
 irq_cfg.val = msi_desc->msg.data;
 irq_cfg.irq_num = msi_desc->irq;

 if (owner_mc_dev == mc_bus_dev) {



  error = dprc_set_irq(mc_bus_dev->mc_io,
         MC_CMD_FLAG_INTR_DIS | MC_CMD_FLAG_PRI,
         mc_bus_dev->mc_handle,
         mc_dev_irq->dev_irq_index,
         &irq_cfg);
  if (error < 0) {
   dev_err(&owner_mc_dev->dev,
    "dprc_set_irq() failed: %d\n", error);
  }
 } else {



  error = dprc_set_obj_irq(mc_bus_dev->mc_io,
      MC_CMD_FLAG_INTR_DIS | MC_CMD_FLAG_PRI,
      mc_bus_dev->mc_handle,
      owner_mc_dev->obj_desc.type,
      owner_mc_dev->obj_desc.id,
      mc_dev_irq->dev_irq_index,
      &irq_cfg);
  if (error < 0) {
   dev_err(&owner_mc_dev->dev,
    "dprc_obj_set_irq() failed: %d\n", error);
  }
 }
}
