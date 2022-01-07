
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WRes ;
typedef int CEvent ;


 int AutoResetEvent_CreateNotSignaled (int *) ;
 scalar_t__ Event_IsCreated (int *) ;
 int Event_Reset (int *) ;

__attribute__((used)) static WRes ArEvent_OptCreate_And_Reset(CEvent *p)
{
  if (Event_IsCreated(p))
    return Event_Reset(p);
  return AutoResetEvent_CreateNotSignaled(p);
}
