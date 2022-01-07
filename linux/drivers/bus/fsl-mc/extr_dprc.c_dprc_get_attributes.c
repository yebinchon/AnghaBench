
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct fsl_mc_io {int dummy; } ;
struct fsl_mc_command {scalar_t__ params; int header; int member_0; } ;
struct dprc_rsp_get_attributes {int portal_id; int options; int icid; int container_id; } ;
struct dprc_attributes {void* portal_id; void* options; int icid; void* container_id; } ;


 int DPRC_CMDID_GET_ATTR ;
 int le16_to_cpu (int ) ;
 void* le32_to_cpu (int ) ;
 int mc_encode_cmd_header (int ,int ,int ) ;
 int mc_send_command (struct fsl_mc_io*,struct fsl_mc_command*) ;

int dprc_get_attributes(struct fsl_mc_io *mc_io,
   u32 cmd_flags,
   u16 token,
   struct dprc_attributes *attr)
{
 struct fsl_mc_command cmd = { 0 };
 struct dprc_rsp_get_attributes *rsp_params;
 int err;


 cmd.header = mc_encode_cmd_header(DPRC_CMDID_GET_ATTR,
       cmd_flags,
       token);


 err = mc_send_command(mc_io, &cmd);
 if (err)
  return err;


 rsp_params = (struct dprc_rsp_get_attributes *)cmd.params;
 attr->container_id = le32_to_cpu(rsp_params->container_id);
 attr->icid = le16_to_cpu(rsp_params->icid);
 attr->options = le32_to_cpu(rsp_params->options);
 attr->portal_id = le32_to_cpu(rsp_params->portal_id);

 return 0;
}
