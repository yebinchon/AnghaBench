
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct vmcs_host_state {int fs_sel; int gs_sel; unsigned long fs_base; unsigned long gs_base; } ;


 int HOST_FS_BASE ;
 int HOST_FS_SELECTOR ;
 int HOST_GS_BASE ;
 int HOST_GS_SELECTOR ;
 scalar_t__ unlikely (int) ;
 int vmcs_write16 (int ,int) ;
 int vmcs_writel (int ,unsigned long) ;

void vmx_set_host_fs_gs(struct vmcs_host_state *host, u16 fs_sel, u16 gs_sel,
   unsigned long fs_base, unsigned long gs_base)
{
 if (unlikely(fs_sel != host->fs_sel)) {
  if (!(fs_sel & 7))
   vmcs_write16(HOST_FS_SELECTOR, fs_sel);
  else
   vmcs_write16(HOST_FS_SELECTOR, 0);
  host->fs_sel = fs_sel;
 }
 if (unlikely(gs_sel != host->gs_sel)) {
  if (!(gs_sel & 7))
   vmcs_write16(HOST_GS_SELECTOR, gs_sel);
  else
   vmcs_write16(HOST_GS_SELECTOR, 0);
  host->gs_sel = gs_sel;
 }
 if (unlikely(fs_base != host->fs_base)) {
  vmcs_writel(HOST_FS_BASE, fs_base);
  host->fs_base = fs_base;
 }
 if (unlikely(gs_base != host->gs_base)) {
  vmcs_writel(HOST_GS_BASE, gs_base);
  host->gs_base = gs_base;
 }
}
