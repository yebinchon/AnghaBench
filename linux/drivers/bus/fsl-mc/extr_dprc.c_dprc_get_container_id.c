
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct fsl_mc_io {int dummy; } ;
struct fsl_mc_command {int header; int member_0; } ;


 int DPRC_CMDID_GET_CONT_ID ;
 scalar_t__ mc_cmd_read_object_id (struct fsl_mc_command*) ;
 int mc_encode_cmd_header (int ,int ,int ) ;
 int mc_send_command (struct fsl_mc_io*,struct fsl_mc_command*) ;

int dprc_get_container_id(struct fsl_mc_io *mc_io,
     u32 cmd_flags,
     int *container_id)
{
 struct fsl_mc_command cmd = { 0 };
 int err;


 cmd.header = mc_encode_cmd_header(DPRC_CMDID_GET_CONT_ID,
       cmd_flags,
       0);


 err = mc_send_command(mc_io, &cmd);
 if (err)
  return err;


 *container_id = (int)mc_cmd_read_object_id(&cmd);

 return 0;
}
