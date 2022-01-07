
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WRes ;
typedef int CEvent ;
typedef int BOOL ;


 int CreateEvent (int *,int ,int ,int *) ;
 int FALSE ;
 int HandleToWRes (int ) ;
 int TRUE ;

__attribute__((used)) static WRes Event_Create(CEvent *p, BOOL manualReset, int signaled)
{
  *p = CreateEvent(((void*)0), manualReset, (signaled ? TRUE : FALSE), ((void*)0));
  return HandleToWRes(*p);
}
