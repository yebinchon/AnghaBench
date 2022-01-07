
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct fsl_mc_io {int dummy; } ;
struct fsl_mc_command {int header; int member_0; } ;


 int DPBP_CMDID_RESET ;
 int mc_encode_cmd_header (int ,int ,int ) ;
 int mc_send_command (struct fsl_mc_io*,struct fsl_mc_command*) ;

int dpbp_reset(struct fsl_mc_io *mc_io,
        u32 cmd_flags,
        u16 token)
{
 struct fsl_mc_command cmd = { 0 };


 cmd.header = mc_encode_cmd_header(DPBP_CMDID_RESET,
       cmd_flags, token);


 return mc_send_command(mc_io, &cmd);
}
