
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int va_list ;
struct TYPE_4__ {char* errmsg; } ;
typedef TYPE_1__ uv_lib_t ;
typedef int LPSTR ;
typedef scalar_t__ DWORD_PTR ;
typedef scalar_t__ DWORD ;


 scalar_t__ ERROR_BAD_EXE_FORMAT ;
 scalar_t__ ERROR_MUI_FILE_NOT_FOUND ;
 scalar_t__ ERROR_RESOURCE_TYPE_NOT_FOUND ;
 int FORMAT_MESSAGE_ALLOCATE_BUFFER ;
 int FORMAT_MESSAGE_ARGUMENT_ARRAY ;
 int FORMAT_MESSAGE_FROM_STRING ;
 int FORMAT_MESSAGE_FROM_SYSTEM ;
 int FORMAT_MESSAGE_IGNORE_INSERTS ;
 scalar_t__ FormatMessageA (int,char*,scalar_t__,int ,int ,int ,int *) ;
 scalar_t__ GetLastError () ;
 int LANG_ENGLISH ;
 int LocalFree (char*) ;
 int MAKELANGID (int ,int ) ;
 int SUBLANG_ENGLISH_US ;
 scalar_t__ strstr (char*,char*) ;
 int uv__format_fallback_error (TYPE_1__*,scalar_t__) ;

__attribute__((used)) static int uv__dlerror(uv_lib_t* lib, const char* filename, DWORD errorno) {
  DWORD_PTR arg;
  DWORD res;
  char* msg;

  if (lib->errmsg) {
    LocalFree(lib->errmsg);
    lib->errmsg = ((void*)0);
  }

  if (errorno == 0)
    return 0;

  res = FormatMessageA(FORMAT_MESSAGE_ALLOCATE_BUFFER |
                       FORMAT_MESSAGE_FROM_SYSTEM |
                       FORMAT_MESSAGE_IGNORE_INSERTS, ((void*)0), errorno,
                       MAKELANGID(LANG_ENGLISH, SUBLANG_ENGLISH_US),
                       (LPSTR) &lib->errmsg, 0, ((void*)0));

  if (!res && (GetLastError() == ERROR_MUI_FILE_NOT_FOUND ||
               GetLastError() == ERROR_RESOURCE_TYPE_NOT_FOUND)) {
    res = FormatMessageA(FORMAT_MESSAGE_ALLOCATE_BUFFER |
                         FORMAT_MESSAGE_FROM_SYSTEM |
                         FORMAT_MESSAGE_IGNORE_INSERTS, ((void*)0), errorno,
                         0, (LPSTR) &lib->errmsg, 0, ((void*)0));
  }

  if (res && errorno == ERROR_BAD_EXE_FORMAT && strstr(lib->errmsg, "%1")) {
    msg = lib->errmsg;
    lib->errmsg = ((void*)0);
    arg = (DWORD_PTR) filename;
    res = FormatMessageA(FORMAT_MESSAGE_ALLOCATE_BUFFER |
                         FORMAT_MESSAGE_ARGUMENT_ARRAY |
                         FORMAT_MESSAGE_FROM_STRING,
                         msg,
                         0, 0, (LPSTR) &lib->errmsg, 0, (va_list*) &arg);
    LocalFree(msg);
  }

  if (!res)
    uv__format_fallback_error(lib, errorno);

  return -1;
}
