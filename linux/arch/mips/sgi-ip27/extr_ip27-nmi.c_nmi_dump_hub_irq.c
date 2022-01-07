
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int nasid_t ;


 int PI_INT_MASK0_A ;
 int PI_INT_MASK0_B ;
 int PI_INT_MASK1_A ;
 int PI_INT_MASK1_B ;
 int PI_INT_PEND0 ;
 int PI_INT_PEND1 ;
 int REMOTE_HUB_L (int ,int ) ;
 int pr_emerg (char*,...) ;

void nmi_dump_hub_irq(nasid_t nasid, int slice)
{
 u64 mask0, mask1, pend0, pend1;

 if (slice == 0) {
  mask0 = REMOTE_HUB_L(nasid, PI_INT_MASK0_A);
  mask1 = REMOTE_HUB_L(nasid, PI_INT_MASK1_A);
 } else {
  mask0 = REMOTE_HUB_L(nasid, PI_INT_MASK0_B);
  mask1 = REMOTE_HUB_L(nasid, PI_INT_MASK1_B);
 }

 pend0 = REMOTE_HUB_L(nasid, PI_INT_PEND0);
 pend1 = REMOTE_HUB_L(nasid, PI_INT_PEND1);

 pr_emerg("PI_INT_MASK0: %16llx PI_INT_MASK1: %16llx\n", mask0, mask1);
 pr_emerg("PI_INT_PEND0: %16llx PI_INT_PEND1: %16llx\n", pend0, pend1);
 pr_emerg("\n\n");
}
