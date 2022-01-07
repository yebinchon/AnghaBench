
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int metafile_len; int * prev_used; int * next_used; int * aio; int new_exceptions; int * metafile; scalar_t__ local_id; scalar_t__ id; } ;
typedef TYPE_1__ user ;


 int hset_int_init (int *) ;

void user_init (user *u) {
  u->id = 0;
  u->local_id = 0;
  u->metafile = ((void*)0);
  u->metafile_len = -1;
  hset_int_init (&u->new_exceptions);

  u->aio = ((void*)0);
  u->next_used = ((void*)0);
  u->prev_used = ((void*)0);
}
