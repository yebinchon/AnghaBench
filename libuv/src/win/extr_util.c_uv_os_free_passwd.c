
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * homedir; int * username; } ;
typedef TYPE_1__ uv_passwd_t ;


 int uv__free (int *) ;

void uv_os_free_passwd(uv_passwd_t* pwd) {
  if (pwd == ((void*)0))
    return;

  uv__free(pwd->username);
  uv__free(pwd->homedir);
  pwd->username = ((void*)0);
  pwd->homedir = ((void*)0);
}
