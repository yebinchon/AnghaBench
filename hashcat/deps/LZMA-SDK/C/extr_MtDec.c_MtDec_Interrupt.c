
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ UInt64 ;
struct TYPE_4__ {int cs; } ;
struct TYPE_5__ {scalar_t__ interruptIndex; TYPE_1__ mtProgress; scalar_t__ needInterrupt; } ;
typedef TYPE_2__ CMtDec ;


 int CriticalSection_Enter (int *) ;
 int CriticalSection_Leave (int *) ;
 scalar_t__ True ;

__attribute__((used)) static void MtDec_Interrupt(CMtDec *p, UInt64 interruptIndex)
{
  CriticalSection_Enter(&p->mtProgress.cs);
  if (!p->needInterrupt || interruptIndex < p->interruptIndex)
  {
    p->interruptIndex = interruptIndex;
    p->needInterrupt = True;
  }
  CriticalSection_Leave(&p->mtProgress.cs);
}
