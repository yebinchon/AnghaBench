
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {char* metafile; int * aio; } ;
typedef TYPE_1__ user ;


 int add_user_used (TYPE_1__*) ;
 int del_user_used (TYPE_1__*) ;
 int user_apply_changes (TYPE_1__*) ;

inline char *get_user_metafile (user *u) {
  if (u->aio != ((void*)0) || u->metafile == ((void*)0)) {
    return ((void*)0);
  }

  user_apply_changes (u);

  del_user_used (u);
  add_user_used (u);

  return u->metafile;
}
