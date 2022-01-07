
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int flags; } ;
typedef TYPE_1__ user ;


 int USER_LOADED ;
 TYPE_1__* conv_user_id (int) ;
 int unload_user_metafile (TYPE_1__*) ;

void test_user_unload (int user_id) {
  user *u = conv_user_id (user_id);
  if (u == ((void*)0)) {
    return;
  }

  if (u->flags & USER_LOADED) {
    u->flags ^= USER_LOADED;
    unload_user_metafile (u);
  }
}
