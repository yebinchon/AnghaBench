
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct fsl_mc_io {int dummy; } ;
struct fsl_mc_command {scalar_t__ params; int header; int member_0; } ;
struct dpcon_notification_cfg {int user_ctx; int priority; int dpio_id; } ;
struct dpcon_cmd_set_notification {int user_ctx; int priority; int dpio_id; } ;


 int DPCON_CMDID_SET_NOTIFICATION ;
 int cpu_to_le32 (int ) ;
 int cpu_to_le64 (int ) ;
 int mc_encode_cmd_header (int ,int ,int ) ;
 int mc_send_command (struct fsl_mc_io*,struct fsl_mc_command*) ;

int dpcon_set_notification(struct fsl_mc_io *mc_io,
      u32 cmd_flags,
      u16 token,
      struct dpcon_notification_cfg *cfg)
{
 struct fsl_mc_command cmd = { 0 };
 struct dpcon_cmd_set_notification *dpcon_cmd;


 cmd.header = mc_encode_cmd_header(DPCON_CMDID_SET_NOTIFICATION,
       cmd_flags,
       token);
 dpcon_cmd = (struct dpcon_cmd_set_notification *)cmd.params;
 dpcon_cmd->dpio_id = cpu_to_le32(cfg->dpio_id);
 dpcon_cmd->priority = cfg->priority;
 dpcon_cmd->user_ctx = cpu_to_le64(cfg->user_ctx);


 return mc_send_command(mc_io, &cmd);
}
