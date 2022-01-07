
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int handle; } ;
typedef TYPE_1__ uv_lib_t ;


 int dlerror () ;
 void* dlsym (int ,char const*) ;
 int uv__dlerror (TYPE_1__*) ;

int uv_dlsym(uv_lib_t* lib, const char* name, void** ptr) {
  dlerror();
  *ptr = dlsym(lib->handle, name);
  return uv__dlerror(lib);
}
