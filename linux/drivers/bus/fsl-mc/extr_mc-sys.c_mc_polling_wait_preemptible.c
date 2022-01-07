
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsl_mc_io {int portal_phys_addr; int dev; int portal_virt_addr; } ;
struct fsl_mc_command {int dummy; } ;
typedef enum mc_cmd_status { ____Placeholder_mc_cmd_status } mc_cmd_status ;


 int ETIMEDOUT ;
 int MC_CMD_COMPLETION_POLLING_MAX_SLEEP_USECS ;
 int MC_CMD_COMPLETION_POLLING_MIN_SLEEP_USECS ;
 int MC_CMD_COMPLETION_TIMEOUT_MS ;
 int MC_CMD_STATUS_READY ;
 int dev_dbg (int ,char*,int *,unsigned int,unsigned int) ;
 unsigned long jiffies ;
 scalar_t__ mc_cmd_hdr_read_cmdid (struct fsl_mc_command*) ;
 scalar_t__ mc_cmd_hdr_read_token (struct fsl_mc_command*) ;
 int mc_read_response (int ,struct fsl_mc_command*) ;
 unsigned long msecs_to_jiffies (int ) ;
 scalar_t__ time_after_eq (unsigned long,unsigned long) ;
 int usleep_range (int ,int ) ;

__attribute__((used)) static int mc_polling_wait_preemptible(struct fsl_mc_io *mc_io,
           struct fsl_mc_command *cmd,
           enum mc_cmd_status *mc_status)
{
 enum mc_cmd_status status;
 unsigned long jiffies_until_timeout =
  jiffies + msecs_to_jiffies(MC_CMD_COMPLETION_TIMEOUT_MS);




 for (;;) {
  status = mc_read_response(mc_io->portal_virt_addr, cmd);
  if (status != MC_CMD_STATUS_READY)
   break;





  usleep_range(MC_CMD_COMPLETION_POLLING_MIN_SLEEP_USECS,
        MC_CMD_COMPLETION_POLLING_MAX_SLEEP_USECS);

  if (time_after_eq(jiffies, jiffies_until_timeout)) {
   dev_dbg(mc_io->dev,
    "MC command timed out (portal: %pa, dprc handle: %#x, command: %#x)\n",
     &mc_io->portal_phys_addr,
     (unsigned int)mc_cmd_hdr_read_token(cmd),
     (unsigned int)mc_cmd_hdr_read_cmdid(cmd));

   return -ETIMEDOUT;
  }
 }

 *mc_status = status;
 return 0;
}
