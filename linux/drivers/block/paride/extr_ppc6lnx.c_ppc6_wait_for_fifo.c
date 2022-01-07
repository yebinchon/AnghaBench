
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ppc_flags; scalar_t__ lpt_addr; } ;
typedef TYPE_1__ Interface ;


 int fifo_wait ;
 int inb (scalar_t__) ;

__attribute__((used)) static void ppc6_wait_for_fifo(Interface *ppc)
{
 int i;

 if (ppc->ppc_flags & fifo_wait)
 {
  for(i=0; i<20; i++)
   inb(ppc->lpt_addr + 1);
 }
}
