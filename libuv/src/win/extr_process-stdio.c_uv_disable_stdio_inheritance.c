
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int lpReserved2; int cbReserved2; } ;
typedef TYPE_1__ STARTUPINFOW ;
typedef int * HANDLE ;


 int GetStartupInfoW (TYPE_1__*) ;
 int * GetStdHandle (int ) ;
 int HANDLE_FLAG_INHERIT ;
 int * INVALID_HANDLE_VALUE ;
 int STD_ERROR_HANDLE ;
 int STD_INPUT_HANDLE ;
 int STD_OUTPUT_HANDLE ;
 int SetHandleInformation (int *,int ,int ) ;
 int uv__stdio_noinherit (int ) ;
 scalar_t__ uv__stdio_verify (int ,int ) ;

void uv_disable_stdio_inheritance(void) {
  HANDLE handle;
  STARTUPINFOW si;


  handle = GetStdHandle(STD_INPUT_HANDLE);
  if (handle != ((void*)0) && handle != INVALID_HANDLE_VALUE)
    SetHandleInformation(handle, HANDLE_FLAG_INHERIT, 0);

  handle = GetStdHandle(STD_OUTPUT_HANDLE);
  if (handle != ((void*)0) && handle != INVALID_HANDLE_VALUE)
    SetHandleInformation(handle, HANDLE_FLAG_INHERIT, 0);

  handle = GetStdHandle(STD_ERROR_HANDLE);
  if (handle != ((void*)0) && handle != INVALID_HANDLE_VALUE)
    SetHandleInformation(handle, HANDLE_FLAG_INHERIT, 0);


  GetStartupInfoW(&si);
  if (uv__stdio_verify(si.lpReserved2, si.cbReserved2))
    uv__stdio_noinherit(si.lpReserved2);
}
