
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct fsl_mc_io {int dummy; } ;
struct fsl_mc_command {scalar_t__ params; void* header; int member_0; } ;
struct dprc_rsp_get_obj_region {int base_addr; int size; int base_offset; } ;
struct dprc_region_desc {void* base_address; int size; void* base_offset; } ;
struct dprc_cmd_get_obj_region {char* obj_type; int region_index; int obj_id; } ;


 int DPRC_CMDID_GET_OBJ_REG ;
 int DPRC_CMDID_GET_OBJ_REG_V2 ;
 int cpu_to_le32 (int) ;
 int dprc_get_api_version (struct fsl_mc_io*,int ,int*,int*) ;
 int le32_to_cpu (int ) ;
 void* le64_to_cpu (int ) ;
 void* mc_encode_cmd_header (int ,int ,int) ;
 int mc_send_command (struct fsl_mc_io*,struct fsl_mc_command*) ;
 int strncpy (char*,char*,int) ;

int dprc_get_obj_region(struct fsl_mc_io *mc_io,
   u32 cmd_flags,
   u16 token,
   char *obj_type,
   int obj_id,
   u8 region_index,
   struct dprc_region_desc *region_desc)
{
 struct fsl_mc_command cmd = { 0 };
 struct dprc_cmd_get_obj_region *cmd_params;
 struct dprc_rsp_get_obj_region *rsp_params;
 u16 major_ver, minor_ver;
 int err;


 err = dprc_get_api_version(mc_io, 0,
         &major_ver,
         &minor_ver);
 if (err)
  return err;







 if (major_ver > 6 || (major_ver == 6 && minor_ver >= 3))
  cmd.header =
   mc_encode_cmd_header(DPRC_CMDID_GET_OBJ_REG_V2,
          cmd_flags, token);
 else
  cmd.header =
   mc_encode_cmd_header(DPRC_CMDID_GET_OBJ_REG,
          cmd_flags, token);

 cmd_params = (struct dprc_cmd_get_obj_region *)cmd.params;
 cmd_params->obj_id = cpu_to_le32(obj_id);
 cmd_params->region_index = region_index;
 strncpy(cmd_params->obj_type, obj_type, 16);
 cmd_params->obj_type[15] = '\0';


 err = mc_send_command(mc_io, &cmd);
 if (err)
  return err;


 rsp_params = (struct dprc_rsp_get_obj_region *)cmd.params;
 region_desc->base_offset = le64_to_cpu(rsp_params->base_offset);
 region_desc->size = le32_to_cpu(rsp_params->size);
 if (major_ver > 6 || (major_ver == 6 && minor_ver >= 3))
  region_desc->base_address = le64_to_cpu(rsp_params->base_addr);
 else
  region_desc->base_address = 0;

 return 0;
}
