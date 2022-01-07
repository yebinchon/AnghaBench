
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ WRes ;
struct TYPE_4__ {int startEvent; int thread; int stop; } ;
typedef int SRes ;
typedef TYPE_1__ CMtCoderThread ;


 scalar_t__ ArEvent_OptCreate_And_Reset (int *) ;
 scalar_t__ Event_Set (int *) ;
 int False ;
 int MY_SRes_HRESULT_FROM_WRes (scalar_t__) ;
 int SZ_OK ;
 int ThreadFunc ;
 scalar_t__ Thread_Create (int *,int ,TYPE_1__*) ;
 int Thread_WasCreated (int *) ;

__attribute__((used)) static SRes MtCoderThread_CreateAndStart(CMtCoderThread *t)
{
  WRes wres = ArEvent_OptCreate_And_Reset(&t->startEvent);
  if (wres == 0)
  {
    t->stop = False;
    if (!Thread_WasCreated(&t->thread))
      wres = Thread_Create(&t->thread, ThreadFunc, t);
    if (wres == 0)
      wres = Event_Set(&t->startEvent);
  }
  if (wres == 0)
    return SZ_OK;
  return MY_SRes_HRESULT_FROM_WRes(wres);
}
