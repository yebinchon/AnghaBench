
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uv_hub_nmi_s {int nmi_value; int read_mmr_count; } ;


 int GPI_NMI_STS_GPP_D_0 ;
 int* PCH_PCR_GPIO_ADDRESS (int ) ;
 int STS_GPP_D_0_MASK ;
 int atomic_inc (int *) ;

__attribute__((used)) static int uv_nmi_test_hubless(struct uv_hub_nmi_s *hub_nmi)
{
 int *pstat = PCH_PCR_GPIO_ADDRESS(GPI_NMI_STS_GPP_D_0);
 int status = *pstat;

 hub_nmi->nmi_value = status;
 atomic_inc(&hub_nmi->read_mmr_count);

 if (!(status & STS_GPP_D_0_MASK))
  return 0;

 *pstat = STS_GPP_D_0_MASK;
 (void)*pstat;

 return 1;
}
