
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uv_hub_nmi_s {scalar_t__ pch_owner; scalar_t__ hub_present; } ;


 int uv_nmi_test_hubless (struct uv_hub_nmi_s*) ;
 int uv_nmi_test_mmr (struct uv_hub_nmi_s*) ;

__attribute__((used)) static int uv_test_nmi(struct uv_hub_nmi_s *hub_nmi)
{
 if (hub_nmi->hub_present)
  return uv_nmi_test_mmr(hub_nmi);

 if (hub_nmi->pch_owner)
  return uv_nmi_test_hubless(hub_nmi);

 return -1;
}
