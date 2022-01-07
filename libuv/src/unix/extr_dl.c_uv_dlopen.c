
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ handle; int * errmsg; } ;
typedef TYPE_1__ uv_lib_t ;


 int RTLD_LAZY ;
 int dlerror () ;
 scalar_t__ dlopen (char const*,int ) ;
 int uv__dlerror (TYPE_1__*) ;

int uv_dlopen(const char* filename, uv_lib_t* lib) {
  dlerror();
  lib->errmsg = ((void*)0);
  lib->handle = dlopen(filename, RTLD_LAZY);
  return lib->handle ? 0 : uv__dlerror(lib);
}
