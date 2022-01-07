
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ metafile_len; int * aio; } ;
typedef TYPE_1__ user ;



int user_loaded (user *u) {
  return u != ((void*)0) && u->metafile_len >= 0 && u->aio == ((void*)0);
}
