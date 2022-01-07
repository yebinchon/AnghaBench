
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct fsl_mc_io {int dummy; } ;
struct fsl_mc_command {scalar_t__ params; int header; int member_0; } ;
struct dpcon_rsp_get_attr {int num_priorities; int qbman_ch_id; int id; } ;
struct dpcon_attr {int num_priorities; int qbman_ch_id; int id; } ;


 int DPCON_CMDID_GET_ATTR ;
 int le16_to_cpu (int ) ;
 int le32_to_cpu (int ) ;
 int mc_encode_cmd_header (int ,int ,int ) ;
 int mc_send_command (struct fsl_mc_io*,struct fsl_mc_command*) ;

int dpcon_get_attributes(struct fsl_mc_io *mc_io,
    u32 cmd_flags,
    u16 token,
    struct dpcon_attr *attr)
{
 struct fsl_mc_command cmd = { 0 };
 struct dpcon_rsp_get_attr *dpcon_rsp;
 int err;


 cmd.header = mc_encode_cmd_header(DPCON_CMDID_GET_ATTR,
       cmd_flags,
       token);


 err = mc_send_command(mc_io, &cmd);
 if (err)
  return err;


 dpcon_rsp = (struct dpcon_rsp_get_attr *)cmd.params;
 attr->id = le32_to_cpu(dpcon_rsp->id);
 attr->qbman_ch_id = le16_to_cpu(dpcon_rsp->qbman_ch_id);
 attr->num_priorities = dpcon_rsp->num_priorities;

 return 0;
}
