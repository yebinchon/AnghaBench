
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 scalar_t__ OWL_CPU1_ADDR ;
 scalar_t__ OWL_CPU1_FLAG ;
 int OWL_CPUx_FLAG_BOOT ;
 int OWL_SPS_PG_CTL_ACK_CPU2 ;
 int OWL_SPS_PG_CTL_ACK_CPU3 ;
 int OWL_SPS_PG_CTL_PWR_CPU2 ;
 int OWL_SPS_PG_CTL_PWR_CPU3 ;
 int __pa_symbol (int ) ;
 int dsb_sev () ;
 int mb () ;
 int owl_sps_set_pg (int ,int ,int ,int) ;
 int secondary_startup ;
 int sps_base_addr ;
 scalar_t__ timer_base_addr ;
 int udelay (int) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static int s500_wakeup_secondary(unsigned int cpu)
{
 int ret;

 if (cpu > 3)
  return -EINVAL;


 switch (cpu) {
 case 2:
  ret = owl_sps_set_pg(sps_base_addr,
                       OWL_SPS_PG_CTL_PWR_CPU2,
         OWL_SPS_PG_CTL_ACK_CPU2, 1);
  if (ret)
   return ret;
  break;
 case 3:
  ret = owl_sps_set_pg(sps_base_addr,
                       OWL_SPS_PG_CTL_PWR_CPU3,
         OWL_SPS_PG_CTL_ACK_CPU3, 1);
  if (ret)
   return ret;
  break;
 }


 udelay(200);

 writel(__pa_symbol(secondary_startup),
        timer_base_addr + OWL_CPU1_ADDR + (cpu - 1) * 4);
 writel(OWL_CPUx_FLAG_BOOT,
        timer_base_addr + OWL_CPU1_FLAG + (cpu - 1) * 4);

 dsb_sev();
 mb();

 return 0;
}
