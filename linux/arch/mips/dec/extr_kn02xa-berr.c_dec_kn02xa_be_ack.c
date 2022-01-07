
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;


 scalar_t__ CKSEG1ADDR (int ) ;
 scalar_t__ KN02CA_MER_INTR ;
 int KN02XA_MEM_INTR ;
 int KN02XA_MER ;
 int iob () ;

__attribute__((used)) static inline void dec_kn02xa_be_ack(void)
{
 volatile u32 *mer = (void *)CKSEG1ADDR(KN02XA_MER);
 volatile u32 *mem_intr = (void *)CKSEG1ADDR(KN02XA_MEM_INTR);

 *mer = KN02CA_MER_INTR;
 *mem_intr = 0;
 iob();
}
