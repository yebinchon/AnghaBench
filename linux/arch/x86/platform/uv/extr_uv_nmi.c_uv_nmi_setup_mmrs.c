
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int UVH_NMI_MMR ;
 int UVH_NMI_MMRX ;
 int UVH_NMI_MMRX_CLEAR ;
 int UVH_NMI_MMRX_REQ ;
 unsigned long UVH_NMI_MMRX_REQ_SHIFT ;
 unsigned long UVH_NMI_MMRX_SHIFT ;
 int UVH_NMI_MMRX_SUPPORTED ;
 int UVH_NMI_MMRX_TYPE ;
 int UVH_NMI_MMR_CLEAR ;
 unsigned long UVH_NMI_MMR_SHIFT ;
 int UVH_NMI_MMR_TYPE ;
 int nmi_mmr ;
 int nmi_mmr_clear ;
 unsigned long nmi_mmr_pending ;
 int pr_info (char*,int ) ;
 scalar_t__ uv_read_local_mmr (int ) ;
 int uv_write_local_mmr (int ,unsigned long) ;

__attribute__((used)) static void uv_nmi_setup_mmrs(void)
{
 if (uv_read_local_mmr(UVH_NMI_MMRX_SUPPORTED)) {
  uv_write_local_mmr(UVH_NMI_MMRX_REQ,
     1UL << UVH_NMI_MMRX_REQ_SHIFT);
  nmi_mmr = UVH_NMI_MMRX;
  nmi_mmr_clear = UVH_NMI_MMRX_CLEAR;
  nmi_mmr_pending = 1UL << UVH_NMI_MMRX_SHIFT;
  pr_info("UV: SMI NMI support: %s\n", UVH_NMI_MMRX_TYPE);
 } else {
  nmi_mmr = UVH_NMI_MMR;
  nmi_mmr_clear = UVH_NMI_MMR_CLEAR;
  nmi_mmr_pending = 1UL << UVH_NMI_MMR_SHIFT;
  pr_info("UV: SMI NMI support: %s\n", UVH_NMI_MMR_TYPE);
 }
}
