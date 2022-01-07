
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * handle; int * errmsg; } ;
typedef TYPE_1__ uv_lib_t ;
typedef int WCHAR ;


 int ARRAY_SIZE (int *) ;
 int CP_UTF8 ;
 int GetLastError () ;
 int LOAD_WITH_ALTERED_SEARCH_PATH ;
 int * LoadLibraryExW (int *,int *,int ) ;
 int MultiByteToWideChar (int ,int ,char const*,int,int *,int ) ;
 int uv__dlerror (TYPE_1__*,char const*,int ) ;

int uv_dlopen(const char* filename, uv_lib_t* lib) {
  WCHAR filename_w[32768];

  lib->handle = ((void*)0);
  lib->errmsg = ((void*)0);

  if (!MultiByteToWideChar(CP_UTF8,
                           0,
                           filename,
                           -1,
                           filename_w,
                           ARRAY_SIZE(filename_w))) {
    return uv__dlerror(lib, filename, GetLastError());
  }

  lib->handle = LoadLibraryExW(filename_w, ((void*)0), LOAD_WITH_ALTERED_SEARCH_PATH);
  if (lib->handle == ((void*)0)) {
    return uv__dlerror(lib, filename, GetLastError());
  }

  return 0;
}
