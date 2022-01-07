
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct pcpu {int address; } ;


 int SIGP_CC_BUSY ;
 int __pcpu_sigp (int ,int ,int ,int *) ;
 int udelay (int) ;

__attribute__((used)) static int pcpu_sigp_retry(struct pcpu *pcpu, u8 order, u32 parm)
{
 int cc, retry;

 for (retry = 0; ; retry++) {
  cc = __pcpu_sigp(pcpu->address, order, parm, ((void*)0));
  if (cc != SIGP_CC_BUSY)
   break;
  if (retry >= 3)
   udelay(10);
 }
 return cc;
}
