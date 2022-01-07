
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int flags; } ;
typedef TYPE_1__ user ;


 int USER_LOADED ;
 int assert (int ) ;
 int unload_user_metafile (TYPE_1__*) ;

void user_unload (user *u) {
  assert (u != ((void*)0));
  if (!(u->flags & USER_LOADED)) {
    assert (0);
    return;
  }

  u->flags ^= USER_LOADED;
  unload_user_metafile (u);
}
