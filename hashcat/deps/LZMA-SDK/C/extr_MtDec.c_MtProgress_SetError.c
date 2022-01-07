
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ res; int cs; } ;
typedef scalar_t__ SRes ;
typedef TYPE_1__ CMtProgress ;


 int CriticalSection_Enter (int *) ;
 int CriticalSection_Leave (int *) ;
 scalar_t__ SZ_OK ;

void MtProgress_SetError(CMtProgress *p, SRes res)
{
  CriticalSection_Enter(&p->cs);
  if (p->res == SZ_OK)
    p->res = res;
  CriticalSection_Leave(&p->cs);
}
