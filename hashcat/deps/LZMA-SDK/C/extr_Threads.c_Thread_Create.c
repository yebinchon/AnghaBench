
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WRes ;
typedef int THREAD_FUNC_TYPE ;
typedef int LPVOID ;
typedef scalar_t__ HANDLE ;
typedef int DWORD ;
typedef scalar_t__ CThread ;


 scalar_t__ CreateThread (int ,int ,int ,int ,int ,int *) ;
 int HandleToWRes (scalar_t__) ;
 scalar_t__ _beginthreadex (int *,int ,int ,int ,int ,unsigned int*) ;

WRes Thread_Create(CThread *p, THREAD_FUNC_TYPE func, LPVOID param)
{
  unsigned threadId;
  *p = (HANDLE)_beginthreadex(((void*)0), 0, func, param, 0, &threadId);




  return HandleToWRes(*p);
}
