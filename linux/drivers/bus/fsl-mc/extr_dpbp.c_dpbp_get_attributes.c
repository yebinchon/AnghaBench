
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct fsl_mc_io {int dummy; } ;
struct fsl_mc_command {scalar_t__ params; int header; int member_0; } ;
struct dpbp_rsp_get_attributes {int id; int bpid; } ;
struct dpbp_attr {int id; int bpid; } ;


 int DPBP_CMDID_GET_ATTR ;
 int le16_to_cpu (int ) ;
 int le32_to_cpu (int ) ;
 int mc_encode_cmd_header (int ,int ,int ) ;
 int mc_send_command (struct fsl_mc_io*,struct fsl_mc_command*) ;

int dpbp_get_attributes(struct fsl_mc_io *mc_io,
   u32 cmd_flags,
   u16 token,
   struct dpbp_attr *attr)
{
 struct fsl_mc_command cmd = { 0 };
 struct dpbp_rsp_get_attributes *rsp_params;
 int err;


 cmd.header = mc_encode_cmd_header(DPBP_CMDID_GET_ATTR,
       cmd_flags, token);


 err = mc_send_command(mc_io, &cmd);
 if (err)
  return err;


 rsp_params = (struct dpbp_rsp_get_attributes *)cmd.params;
 attr->bpid = le16_to_cpu(rsp_params->bpid);
 attr->id = le32_to_cpu(rsp_params->id);

 return 0;
}
