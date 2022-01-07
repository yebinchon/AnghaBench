
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int cs; } ;
struct TYPE_6__ {TYPE_1__ mtProgress; int cs; } ;
typedef TYPE_2__ CMtCoder ;


 int CriticalSection_Delete (int *) ;
 int MtCoder_Free (TYPE_2__*) ;

void MtCoder_Destruct(CMtCoder *p)
{
  MtCoder_Free(p);

  CriticalSection_Delete(&p->cs);
  CriticalSection_Delete(&p->mtProgress.cs);
}
