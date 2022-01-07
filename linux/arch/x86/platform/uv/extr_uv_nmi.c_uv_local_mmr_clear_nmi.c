
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int nmi_mmr_clear ;
 int nmi_mmr_pending ;
 int uv_write_local_mmr (int ,int ) ;

__attribute__((used)) static inline void uv_local_mmr_clear_nmi(void)
{
 uv_write_local_mmr(nmi_mmr_clear, nmi_mmr_pending);
}
