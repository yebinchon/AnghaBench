
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int WRes ;
struct TYPE_3__ {scalar_t__ handle; int * file; } ;
typedef TYPE_1__ CSzFile ;


 int CloseHandle (scalar_t__) ;
 int GetLastError () ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int fclose (int *) ;

WRes File_Close(CSzFile *p)
{
  if (p->file != ((void*)0))
  {
    int res = fclose(p->file);
    if (res != 0)
      return res;
    p->file = ((void*)0);
  }

  return 0;
}
