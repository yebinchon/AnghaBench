
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* name; } ;
typedef TYPE_1__ uv_env_item_t ;


 int uv__free (TYPE_1__*) ;

void uv_os_free_environ(uv_env_item_t* envitems, int count) {
  int i;

  for (i = 0; i < count; i++) {
    uv__free(envitems[i].name);
  }

  uv__free(envitems);
}
