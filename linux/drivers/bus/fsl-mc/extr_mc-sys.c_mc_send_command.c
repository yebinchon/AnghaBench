
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsl_mc_io {int flags; int mutex; int spinlock; int portal_phys_addr; int dev; int portal_virt_addr; } ;
struct fsl_mc_command {int dummy; } ;
typedef enum mc_cmd_status { ____Placeholder_mc_cmd_status } mc_cmd_status ;


 int EINVAL ;
 int FSL_MC_IO_ATOMIC_CONTEXT_PORTAL ;
 int MC_CMD_STATUS_OK ;
 int dev_dbg (int ,char*,int *,unsigned int,unsigned int,int ,unsigned int) ;
 scalar_t__ in_irq () ;
 scalar_t__ mc_cmd_hdr_read_cmdid (struct fsl_mc_command*) ;
 scalar_t__ mc_cmd_hdr_read_token (struct fsl_mc_command*) ;
 int mc_polling_wait_atomic (struct fsl_mc_io*,struct fsl_mc_command*,int*) ;
 int mc_polling_wait_preemptible (struct fsl_mc_io*,struct fsl_mc_command*,int*) ;
 int mc_status_to_error (int) ;
 int mc_status_to_string (int) ;
 int mc_write_command (int ,struct fsl_mc_command*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int mc_send_command(struct fsl_mc_io *mc_io, struct fsl_mc_command *cmd)
{
 int error;
 enum mc_cmd_status status;
 unsigned long irq_flags = 0;

 if (in_irq() && !(mc_io->flags & FSL_MC_IO_ATOMIC_CONTEXT_PORTAL))
  return -EINVAL;

 if (mc_io->flags & FSL_MC_IO_ATOMIC_CONTEXT_PORTAL)
  spin_lock_irqsave(&mc_io->spinlock, irq_flags);
 else
  mutex_lock(&mc_io->mutex);




 mc_write_command(mc_io->portal_virt_addr, cmd);




 if (!(mc_io->flags & FSL_MC_IO_ATOMIC_CONTEXT_PORTAL))
  error = mc_polling_wait_preemptible(mc_io, cmd, &status);
 else
  error = mc_polling_wait_atomic(mc_io, cmd, &status);

 if (error < 0)
  goto common_exit;

 if (status != MC_CMD_STATUS_OK) {
  dev_dbg(mc_io->dev,
   "MC command failed: portal: %pa, dprc handle: %#x, command: %#x, status: %s (%#x)\n",
    &mc_io->portal_phys_addr,
    (unsigned int)mc_cmd_hdr_read_token(cmd),
    (unsigned int)mc_cmd_hdr_read_cmdid(cmd),
    mc_status_to_string(status),
    (unsigned int)status);

  error = mc_status_to_error(status);
  goto common_exit;
 }

 error = 0;
common_exit:
 if (mc_io->flags & FSL_MC_IO_ATOMIC_CONTEXT_PORTAL)
  spin_unlock_irqrestore(&mc_io->spinlock, irq_flags);
 else
  mutex_unlock(&mc_io->mutex);

 return error;
}
