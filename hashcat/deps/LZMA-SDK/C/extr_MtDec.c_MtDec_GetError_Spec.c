
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ UInt64 ;
struct TYPE_4__ {int cs; int res; } ;
struct TYPE_5__ {scalar_t__ interruptIndex; TYPE_1__ mtProgress; scalar_t__ needInterrupt; } ;
typedef int SRes ;
typedef TYPE_2__ CMtDec ;
typedef int BoolInt ;


 int CriticalSection_Enter (int *) ;
 int CriticalSection_Leave (int *) ;

__attribute__((used)) static SRes MtDec_GetError_Spec(CMtDec *p, UInt64 interruptIndex, BoolInt *wasInterrupted)
{
  SRes res;
  CriticalSection_Enter(&p->mtProgress.cs);
  *wasInterrupted = (p->needInterrupt && interruptIndex > p->interruptIndex);
  res = p->mtProgress.res;
  CriticalSection_Leave(&p->mtProgress.cs);
  return res;
}
