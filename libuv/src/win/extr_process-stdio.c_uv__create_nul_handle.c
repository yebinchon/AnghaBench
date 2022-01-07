
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int nLength; int bInheritHandle; int * lpSecurityDescriptor; } ;
typedef TYPE_1__ SECURITY_ATTRIBUTES ;
typedef scalar_t__ HANDLE ;
typedef int DWORD ;


 scalar_t__ CreateFileW (char*,int ,int,TYPE_1__*,int ,int ,int *) ;
 int FILE_SHARE_READ ;
 int FILE_SHARE_WRITE ;
 int GetLastError () ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int OPEN_EXISTING ;
 int TRUE ;

int uv__create_nul_handle(HANDLE* handle_ptr,
    DWORD access) {
  HANDLE handle;
  SECURITY_ATTRIBUTES sa;

  sa.nLength = sizeof sa;
  sa.lpSecurityDescriptor = ((void*)0);
  sa.bInheritHandle = TRUE;

  handle = CreateFileW(L"NUL",
                       access,
                       FILE_SHARE_READ | FILE_SHARE_WRITE,
                       &sa,
                       OPEN_EXISTING,
                       0,
                       ((void*)0));
  if (handle == INVALID_HANDLE_VALUE) {
    return GetLastError();
  }

  *handle_ptr = handle;
  return 0;
}
