
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mc_version {void* minor; void* major; void* revision; } ;
struct fsl_mc_io {int dummy; } ;
struct fsl_mc_command {scalar_t__ params; int header; int member_0; } ;
struct dpmng_rsp_get_version {int version_minor; int version_major; int revision; } ;


 int DPMNG_CMDID_GET_VERSION ;
 void* le32_to_cpu (int ) ;
 int mc_encode_cmd_header (int ,int ,int ) ;
 int mc_send_command (struct fsl_mc_io*,struct fsl_mc_command*) ;

__attribute__((used)) static int mc_get_version(struct fsl_mc_io *mc_io,
     u32 cmd_flags,
     struct mc_version *mc_ver_info)
{
 struct fsl_mc_command cmd = { 0 };
 struct dpmng_rsp_get_version *rsp_params;
 int err;


 cmd.header = mc_encode_cmd_header(DPMNG_CMDID_GET_VERSION,
       cmd_flags,
       0);


 err = mc_send_command(mc_io, &cmd);
 if (err)
  return err;


 rsp_params = (struct dpmng_rsp_get_version *)cmd.params;
 mc_ver_info->revision = le32_to_cpu(rsp_params->revision);
 mc_ver_info->major = le32_to_cpu(rsp_params->version_major);
 mc_ver_info->minor = le32_to_cpu(rsp_params->version_minor);

 return 0;
}
