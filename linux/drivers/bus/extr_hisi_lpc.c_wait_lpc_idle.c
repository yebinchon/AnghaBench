
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int EIO ;
 int ETIME ;
 int LPC_NSEC_PERWAIT ;
 int LPC_REG_OP_STATUS ;
 int LPC_REG_OP_STATUS_FINISHED ;
 int LPC_REG_OP_STATUS_IDLE ;
 int ndelay (int ) ;
 int readl (unsigned char*) ;

__attribute__((used)) static int wait_lpc_idle(unsigned char *mbase, unsigned int waitcnt)
{
 u32 status;

 do {
  status = readl(mbase + LPC_REG_OP_STATUS);
  if (status & LPC_REG_OP_STATUS_IDLE)
   return (status & LPC_REG_OP_STATUS_FINISHED) ? 0 : -EIO;
  ndelay(LPC_NSEC_PERWAIT);
 } while (--waitcnt);

 return -ETIME;
}
