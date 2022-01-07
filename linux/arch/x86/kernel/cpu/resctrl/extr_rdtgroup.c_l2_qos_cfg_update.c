
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long long L2_QOS_CDP_ENABLE ;
 int MSR_IA32_L2_QOS_CFG ;
 int wrmsrl (int ,unsigned long long) ;

__attribute__((used)) static void l2_qos_cfg_update(void *arg)
{
 bool *enable = arg;

 wrmsrl(MSR_IA32_L2_QOS_CFG, *enable ? L2_QOS_CDP_ENABLE : 0ULL);
}
