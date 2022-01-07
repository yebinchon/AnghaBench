
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int metafile_len; int sugg; int new_exceptions; int * prev_used; int * next_used; int * aio; int * metafile; } ;
typedef TYPE_1__ user ;


 int CHG_INIT (int ) ;
 int trp_init (int *) ;

void user_init (user *u) {
  u->metafile = ((void*)0);
  u->metafile_len = -1;
  u->aio = ((void*)0);
  u->next_used = ((void*)0);
  u->prev_used = ((void*)0);

  CHG_INIT (u->new_exceptions);
  trp_init (&u->sugg);
}
