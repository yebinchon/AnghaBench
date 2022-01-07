
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef scalar_t__ HANDLE ;
typedef int DWORD ;


 scalar_t__ CreateFileW (int const*,int,int ,int *,int ,int ,int *) ;
 scalar_t__ ERROR_ACCESS_DENIED ;
 int FILE_FLAG_OVERLAPPED ;
 int FILE_READ_ATTRIBUTES ;
 int FILE_WRITE_ATTRIBUTES ;
 int GENERIC_READ ;
 int GENERIC_WRITE ;
 scalar_t__ GetLastError () ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int OPEN_EXISTING ;
 int UV_HANDLE_READABLE ;
 int UV_HANDLE_WRITABLE ;

__attribute__((used)) static HANDLE open_named_pipe(const WCHAR* name, DWORD* duplex_flags) {
  HANDLE pipeHandle;





  pipeHandle = CreateFileW(name,
                           GENERIC_READ | GENERIC_WRITE,
                           0,
                           ((void*)0),
                           OPEN_EXISTING,
                           FILE_FLAG_OVERLAPPED,
                           ((void*)0));
  if (pipeHandle != INVALID_HANDLE_VALUE) {
    *duplex_flags = UV_HANDLE_READABLE | UV_HANDLE_WRITABLE;
    return pipeHandle;
  }






  if (GetLastError() == ERROR_ACCESS_DENIED) {
    pipeHandle = CreateFileW(name,
                             GENERIC_READ | FILE_WRITE_ATTRIBUTES,
                             0,
                             ((void*)0),
                             OPEN_EXISTING,
                             FILE_FLAG_OVERLAPPED,
                             ((void*)0));

    if (pipeHandle != INVALID_HANDLE_VALUE) {
      *duplex_flags = UV_HANDLE_READABLE;
      return pipeHandle;
    }
  }

  if (GetLastError() == ERROR_ACCESS_DENIED) {
    pipeHandle = CreateFileW(name,
                             GENERIC_WRITE | FILE_READ_ATTRIBUTES,
                             0,
                             ((void*)0),
                             OPEN_EXISTING,
                             FILE_FLAG_OVERLAPPED,
                             ((void*)0));

    if (pipeHandle != INVALID_HANDLE_VALUE) {
      *duplex_flags = UV_HANDLE_WRITABLE;
      return pipeHandle;
    }
  }

  return INVALID_HANDLE_VALUE;
}
