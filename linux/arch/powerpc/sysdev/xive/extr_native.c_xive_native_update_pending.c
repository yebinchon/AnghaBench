
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct xive_cpu {int pending_prio; int cppr; } ;






 scalar_t__ TM_SPC_ACK_HV_REG ;
 int __raw_readw (scalar_t__) ;
 int be16_to_cpu (int ) ;
 int mb () ;
 int pr_err (char*,int ,int,...) ;
 int smp_processor_id () ;
 scalar_t__ xive_tima ;

__attribute__((used)) static void xive_native_update_pending(struct xive_cpu *xc)
{
 u8 he, cppr;
 u16 ack;


 ack = be16_to_cpu(__raw_readw(xive_tima + TM_SPC_ACK_HV_REG));


 mb();





 cppr = ack & 0xff;
 he = (ack >> 8) >> 6;
 switch(he) {
 case 130:
  break;
 case 129:
  if (cppr == 0xff)
   return;

  xc->pending_prio |= 1 << cppr;





  if (cppr >= xc->cppr)
   pr_err("CPU %d odd ack CPPR, got %d at %d\n",
          smp_processor_id(), cppr, xc->cppr);


  xc->cppr = cppr;
  break;
 case 128:
 case 131:
  pr_err("CPU %d got unexpected interrupt type HE=%d\n",
         smp_processor_id(), he);
  return;
 }
}
