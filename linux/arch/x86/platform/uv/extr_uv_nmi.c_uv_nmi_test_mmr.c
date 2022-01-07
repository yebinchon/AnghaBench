
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uv_hub_nmi_s {int nmi_value; int read_mmr_count; } ;


 int atomic_inc (int *) ;
 int nmi_mmr ;
 int nmi_mmr_pending ;
 int uv_read_local_mmr (int ) ;

__attribute__((used)) static inline int uv_nmi_test_mmr(struct uv_hub_nmi_s *hub_nmi)
{
 hub_nmi->nmi_value = uv_read_local_mmr(nmi_mmr);
 atomic_inc(&hub_nmi->read_mmr_count);
 return !!(hub_nmi->nmi_value & nmi_mmr_pending);
}
