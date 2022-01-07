
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int cs; int res; } ;
typedef int SRes ;
typedef TYPE_1__ CMtProgress ;


 int CriticalSection_Enter (int *) ;
 int CriticalSection_Leave (int *) ;

SRes MtProgress_GetError(CMtProgress *p)
{
  SRes res;
  CriticalSection_Enter(&p->cs);
  res = p->res;
  CriticalSection_Leave(&p->cs);
  return res;
}
