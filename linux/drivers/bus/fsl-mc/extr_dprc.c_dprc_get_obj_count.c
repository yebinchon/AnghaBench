
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct fsl_mc_io {int dummy; } ;
struct fsl_mc_command {scalar_t__ params; int header; int member_0; } ;
struct dprc_rsp_get_obj_count {int obj_count; } ;


 int DPRC_CMDID_GET_OBJ_COUNT ;
 int le32_to_cpu (int ) ;
 int mc_encode_cmd_header (int ,int ,int ) ;
 int mc_send_command (struct fsl_mc_io*,struct fsl_mc_command*) ;

int dprc_get_obj_count(struct fsl_mc_io *mc_io,
         u32 cmd_flags,
         u16 token,
         int *obj_count)
{
 struct fsl_mc_command cmd = { 0 };
 struct dprc_rsp_get_obj_count *rsp_params;
 int err;


 cmd.header = mc_encode_cmd_header(DPRC_CMDID_GET_OBJ_COUNT,
       cmd_flags, token);


 err = mc_send_command(mc_io, &cmd);
 if (err)
  return err;


 rsp_params = (struct dprc_rsp_get_obj_count *)cmd.params;
 *obj_count = le32_to_cpu(rsp_params->obj_count);

 return 0;
}
