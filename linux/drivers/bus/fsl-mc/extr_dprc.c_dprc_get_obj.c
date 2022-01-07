
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct fsl_mc_obj_desc {char* type; char* label; void* flags; void* ver_minor; void* ver_major; void* state; int region_count; int irq_count; void* vendor; void* id; } ;
struct fsl_mc_io {int dummy; } ;
struct fsl_mc_command {scalar_t__ params; int header; int member_0; } ;
struct dprc_rsp_get_obj {int label; int type; int flags; int version_minor; int version_major; int state; int region_count; int irq_count; int vendor; int id; } ;
struct dprc_cmd_get_obj {int obj_index; } ;


 int DPRC_CMDID_GET_OBJ ;
 int cpu_to_le32 (int) ;
 void* le16_to_cpu (int ) ;
 void* le32_to_cpu (int ) ;
 int mc_encode_cmd_header (int ,int ,int ) ;
 int mc_send_command (struct fsl_mc_io*,struct fsl_mc_command*) ;
 int strncpy (char*,int ,int) ;

int dprc_get_obj(struct fsl_mc_io *mc_io,
   u32 cmd_flags,
   u16 token,
   int obj_index,
   struct fsl_mc_obj_desc *obj_desc)
{
 struct fsl_mc_command cmd = { 0 };
 struct dprc_cmd_get_obj *cmd_params;
 struct dprc_rsp_get_obj *rsp_params;
 int err;


 cmd.header = mc_encode_cmd_header(DPRC_CMDID_GET_OBJ,
       cmd_flags,
       token);
 cmd_params = (struct dprc_cmd_get_obj *)cmd.params;
 cmd_params->obj_index = cpu_to_le32(obj_index);


 err = mc_send_command(mc_io, &cmd);
 if (err)
  return err;


 rsp_params = (struct dprc_rsp_get_obj *)cmd.params;
 obj_desc->id = le32_to_cpu(rsp_params->id);
 obj_desc->vendor = le16_to_cpu(rsp_params->vendor);
 obj_desc->irq_count = rsp_params->irq_count;
 obj_desc->region_count = rsp_params->region_count;
 obj_desc->state = le32_to_cpu(rsp_params->state);
 obj_desc->ver_major = le16_to_cpu(rsp_params->version_major);
 obj_desc->ver_minor = le16_to_cpu(rsp_params->version_minor);
 obj_desc->flags = le16_to_cpu(rsp_params->flags);
 strncpy(obj_desc->type, rsp_params->type, 16);
 obj_desc->type[15] = '\0';
 strncpy(obj_desc->label, rsp_params->label, 16);
 obj_desc->label[15] = '\0';
 return 0;
}
