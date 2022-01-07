
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int cs; } ;
struct TYPE_6__ {TYPE_1__ mtProgress; } ;
typedef TYPE_2__ CMtDec ;


 int CriticalSection_Delete (int *) ;
 int MtDec_Free (TYPE_2__*) ;

void MtDec_Destruct(CMtDec *p)
{
  MtDec_Free(p);

  CriticalSection_Delete(&p->mtProgress.cs);
}
