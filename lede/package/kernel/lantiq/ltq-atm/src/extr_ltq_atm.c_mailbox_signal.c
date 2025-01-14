
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ASSERT (int,char*,unsigned int,int,int ) ;
 unsigned int FIRST_QSB_QID ;
 int IFX_REG_R32 (int ) ;
 int MBOX_IGU3_ISR ;
 int * MBOX_IGU3_ISRS ;
 int MBOX_IGU3_ISRS_SET (unsigned int) ;
 scalar_t__ MBOX_IGU3_ISR_ISR (unsigned int) ;

__attribute__((used)) static inline void mailbox_signal(unsigned int queue, int is_tx)
{
 int count = 1000;

 if ( is_tx ) {
  while ( MBOX_IGU3_ISR_ISR(queue + FIRST_QSB_QID + 16) && count > 0 )
   count--;
  *MBOX_IGU3_ISRS = MBOX_IGU3_ISRS_SET(queue + FIRST_QSB_QID + 16);
 } else {
  while ( MBOX_IGU3_ISR_ISR(queue) && count > 0 )
   count--;
  *MBOX_IGU3_ISRS = MBOX_IGU3_ISRS_SET(queue);
 }

 ASSERT(count > 0, "queue = %u, is_tx = %d, MBOX_IGU3_ISR = 0x%08x", queue, is_tx, IFX_REG_R32(MBOX_IGU3_ISR));
}
