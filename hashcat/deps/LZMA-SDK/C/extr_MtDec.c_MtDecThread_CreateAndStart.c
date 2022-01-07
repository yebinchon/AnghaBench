
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ WRes ;
struct TYPE_5__ {int thread; } ;
typedef int SRes ;
typedef TYPE_1__ CMtDecThread ;


 int MY_SRes_HRESULT_FROM_WRes (scalar_t__) ;
 scalar_t__ MtDecThread_CreateEvents (TYPE_1__*) ;
 int SZ_OK ;
 int ThreadFunc ;
 scalar_t__ Thread_Create (int *,int ,TYPE_1__*) ;
 scalar_t__ Thread_WasCreated (int *) ;

__attribute__((used)) static SRes MtDecThread_CreateAndStart(CMtDecThread *t)
{
  WRes wres = MtDecThread_CreateEvents(t);

  if (wres == 0)
  {
    if (Thread_WasCreated(&t->thread))
      return SZ_OK;
    wres = Thread_Create(&t->thread, ThreadFunc, t);
    if (wres == 0)
      return SZ_OK;
  }
  return MY_SRes_HRESULT_FROM_WRes(wres);
}
