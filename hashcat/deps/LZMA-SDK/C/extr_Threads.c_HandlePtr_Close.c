
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WRes ;
typedef int * HANDLE ;


 int CloseHandle (int *) ;
 int GetError () ;

WRes HandlePtr_Close(HANDLE *p)
{
  if (*p != ((void*)0))
  {
    if (!CloseHandle(*p))
      return GetError();
    *p = ((void*)0);
  }
  return 0;
}
