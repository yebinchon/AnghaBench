
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int handle; } ;
typedef TYPE_1__ uv_lib_t ;


 int GetLastError () ;
 scalar_t__ GetProcAddress (int ,char const*) ;
 int uv__dlerror (TYPE_1__*,char*,int ) ;

int uv_dlsym(uv_lib_t* lib, const char* name, void** ptr) {

  *ptr = (void*)(uintptr_t) GetProcAddress(lib->handle, name);
  return uv__dlerror(lib, "", *ptr ? 0 : GetLastError());
}
