
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * errmsg; } ;
typedef TYPE_1__ uv_lib_t ;


 char* dlerror () ;
 int uv__free (int *) ;
 int * uv__strdup (char const*) ;

__attribute__((used)) static int uv__dlerror(uv_lib_t* lib) {
  const char* errmsg;

  uv__free(lib->errmsg);

  errmsg = dlerror();

  if (errmsg) {
    lib->errmsg = uv__strdup(errmsg);
    return -1;
  }
  else {
    lib->errmsg = ((void*)0);
    return 0;
  }
}
