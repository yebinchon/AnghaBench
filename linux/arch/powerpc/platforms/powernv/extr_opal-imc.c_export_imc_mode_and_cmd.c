
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct imc_pmu {struct imc_mem_info* mem_info; } ;
struct imc_mem_info {scalar_t__ id; int * vbase; } ;
struct device_node {int dummy; } ;


 int IMC_CNTL_BLK_CMD_OFFSET ;
 int IMC_CNTL_BLK_MODE_OFFSET ;
 int IMC_CNTL_BLK_OFFSET ;
 int debugfs_create_dir (char*,int ) ;
 int debugfs_remove_recursive (int ) ;
 int imc_debugfs_create_x64 (char*,int,int ,int*) ;
 int imc_debugfs_parent ;
 scalar_t__ of_property_read_u32 (struct device_node*,char*,int*) ;
 int powerpc_debugfs_root ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static void export_imc_mode_and_cmd(struct device_node *node,
        struct imc_pmu *pmu_ptr)
{
 static u64 loc, *imc_mode_addr, *imc_cmd_addr;
 char mode[16], cmd[16];
 u32 cb_offset;
 struct imc_mem_info *ptr = pmu_ptr->mem_info;

 imc_debugfs_parent = debugfs_create_dir("imc", powerpc_debugfs_root);





 if (!imc_debugfs_parent)
  return;

 if (of_property_read_u32(node, "cb_offset", &cb_offset))
  cb_offset = IMC_CNTL_BLK_OFFSET;

 while (ptr->vbase != ((void*)0)) {
  loc = (u64)(ptr->vbase) + cb_offset;
  imc_mode_addr = (u64 *)(loc + IMC_CNTL_BLK_MODE_OFFSET);
  sprintf(mode, "imc_mode_%d", (u32)(ptr->id));
  if (!imc_debugfs_create_x64(mode, 0600, imc_debugfs_parent,
         imc_mode_addr))
   goto err;

  imc_cmd_addr = (u64 *)(loc + IMC_CNTL_BLK_CMD_OFFSET);
  sprintf(cmd, "imc_cmd_%d", (u32)(ptr->id));
  if (!imc_debugfs_create_x64(cmd, 0600, imc_debugfs_parent,
         imc_cmd_addr))
   goto err;
  ptr++;
 }
 return;

err:
 debugfs_remove_recursive(imc_debugfs_parent);
}
