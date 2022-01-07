
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * handle; int * errmsg; } ;
typedef TYPE_1__ uv_lib_t ;


 int dlclose (int *) ;
 int uv__free (int *) ;

void uv_dlclose(uv_lib_t* lib) {
  uv__free(lib->errmsg);
  lib->errmsg = ((void*)0);

  if (lib->handle) {

    dlclose(lib->handle);
    lib->handle = ((void*)0);
  }
}
