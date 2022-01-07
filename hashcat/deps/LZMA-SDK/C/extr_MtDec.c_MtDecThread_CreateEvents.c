
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ WRes ;
struct TYPE_3__ {int canRead; int canWrite; } ;
typedef TYPE_1__ CMtDecThread ;


 scalar_t__ ArEvent_OptCreate_And_Reset (int *) ;
 scalar_t__ SZ_OK ;

__attribute__((used)) static WRes MtDecThread_CreateEvents(CMtDecThread *t)
{
  WRes wres = ArEvent_OptCreate_And_Reset(&t->canWrite);
  if (wres == 0)
  {
    wres = ArEvent_OptCreate_And_Reset(&t->canRead);
    if (wres == 0)
      return SZ_OK;
  }
  return wres;
}
